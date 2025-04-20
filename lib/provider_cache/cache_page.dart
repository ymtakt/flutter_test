import 'package:dart_flutter_practice/provider_cache/keep_alive.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class CacheExamplePage extends ConsumerWidget {
  const CacheExamplePage();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('keepAliveの例')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1. keepAliveを使用するプロバイダー:', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Consumer(
              builder: (context, ref, _) {
                final dataAsync = ref.watch(fetchDataProvider);
                return dataAsync.when(
                  data: (data) => 
                  Column(children: [
                    Text('結果:'),
                    Text('$data')
                  ],),
                  loading: () => CircularProgressIndicator(),
                  error: (err, stack) => Text('エラー: $err'),
                );
              },
            ),
            SizedBox(height: 20),
            Text('2. 自動破棄されるプロバイダー:', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Consumer(
              builder: (context, ref, _) {
                final dataAsync = ref.watch(fetchDataAutoDisposeProvider);
                return dataAsync.when(
                  data: (data) =>   Column(children: [
                    Text('結果: '),
                    Text('$data')
                  ],),
                  loading: () => CircularProgressIndicator(),
                  error: (err, stack) => Text('エラー: $err'),
                );
              },
            ),
            SizedBox(height: 20),
            // マウント/アンマウントを確認するためのボタン
              ElevatedButton(
              onPressed: () {
                // SecondScreenを開く
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),    
                );
              },
              child: Text('別の画面へ'),
            ),
            
          ],
        ),
      ),
    );
  }
}
class SecondScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('別の画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('この画面ではプロバイダーを監視していません'),
            SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     // 明示的に強制無効化してから戻る
            //     ref.invalidate(fetchDataProvider);
            //     ref.invalidate(fetchDataAutoDisposeProvider);
            //     print('*** プロバイダーを無効化しました ***');
            //     Navigator.pop(context);
            //   },
            //   child: Text('キャッシュを強制的に無効化して戻る'),
            // ),
            SizedBox(height: 20),
            // 完全に新しいルートにする
            ElevatedButton(
              onPressed: () {
                // ルートごと入れ替える
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => CacheExamplePage()),
                  (route) => true, // すべての前のルートを削除
                );
              },
              child: Text('完全に新しい画面を作成'),
            ),
          ],
        ),
      ),
    );
  }
}