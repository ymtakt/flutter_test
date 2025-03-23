import 'package:dart_flutter_practice/provider_ref/counter_provider.dart';
import 'package:dart_flutter_practice/provider_ref/ref_example_widget.dart';
import 'package:dart_flutter_practice/provider_ref/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Riverpod ref methods tests', () {
    testWidgets('ref.watch は値の変更を検知して再ビルドする', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              // Scaffoldを追加
              body: RefExampleWidget(),
            ),
          ),
        ),
      );

      // 初期状態を確認
      expect(find.text('Current count: 0'), findsOneWidget);

      // カウントを増やす
      await tester.tap(find.text('Increment'));
      await tester.pump();

      // watchしているので表示が更新される
      expect(find.text('Current count: 1'), findsOneWidget);
    });

    testWidgets('ref.listen は値の変更時にコールバックを実行する', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: MaterialApp(home: RefExampleWidget())),
      );

      // カウントを10まで増やす
      for (var i = 0; i < 10; i++) {
        await tester.tap(find.text('Increment'));
        await tester.pump();
      }

      // SnackBarが表示されることを確認
      expect(find.byType(SnackBar), findsOneWidget);
      expect(find.text('カウントが10以上になりました！'), findsOneWidget);
    });

    test('ref.read は値の読み取りのみを行う', () {
      final container = ProviderContainer();

      // 初期値を確認
      expect(container.read(counterProvider), 0);

      // 値を更新
      container.read(counterProvider.notifier).increment();

      // 更新後の値を確認
      expect(container.read(counterProvider), 1);
    });

    test('ref.watch vs ref.read の違い', () {
      final container = ProviderContainer();
      var buildCount = 0;

      // watcherを作成
      final watcher = container.listen(counterProvider, (previous, next) {
        buildCount++;
      });

      // readは通知を発生させない
      final value = container.read(counterProvider);
      expect(buildCount, 0);

      // 値を更新
      container.read(counterProvider.notifier).increment();

      // watcherが通知を受け取る
      expect(buildCount, 1);

      watcher.close();
    });

    test('UserNotifierの動作確認', () {
      final container = ProviderContainer();

      // 初期値はnull
      expect(container.read(userNotifierProvider), null);

      // ユーザー情報を更新
      container.read(userNotifierProvider.notifier).updateUser('田中太郎', 30);

      // 更新後の値を確認
      final user = container.read(userNotifierProvider);
      expect(user?.name, '田中太郎');
      expect(user?.age, 30);
    });
  });
}
