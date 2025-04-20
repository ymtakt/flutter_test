import 'package:dart_flutter_practice/provider_cache/stream_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StreamWidgetPage extends StatelessWidget {
  const StreamWidgetPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('最初の画面')),
      body: Center(child: _StreamWidget()),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('別画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     // popを使用して前の画面に戻る
            //     Navigator.pop(context);
            //   },
            //   child: const Text('戻る'),
            // ),
            ElevatedButton(
              onPressed: () {
                // 新しい画面を作成して前の画面に戻る
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StreamWidgetPage(),
                  ),
                );
              },
              child: const Text('新しい画面'),
            ),
          ],
        ),
      ),
    );
  }
}

class _StreamWidget extends ConsumerWidget {
  const _StreamWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 生成されたプロバイダーを監視
    final counterStream = ref.watch(counterStreamProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Stream例')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('カウントストリーム:'),

            // AsyncValueの状態に応じて表示を切り替え
            counterStream.when(
              data:
                  (count) =>
                      Text('$count', style: const TextStyle(fontSize: 48)),
              loading: () => const CircularProgressIndicator(),
              error: (e, st) => Text('エラー: $e'),
            ),

            const SizedBox(height: 20),

            // このボタンを押すと画面遷移して、プロバイダーが破棄される
            ElevatedButton(
              onPressed: () {
                // 画面スタックが破棄されない
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const _SecondPage()),
                // );

                // pushReplacementを使用して前の画面を完全に置き換える
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const _SecondPage()),
                );
              },
              child: const Text('次の画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
