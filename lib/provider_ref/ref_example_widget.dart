import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_provider.dart';
import 'user_provider.dart';

class RefExampleWidget extends ConsumerWidget {
  const RefExampleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch - 値の変更を監視して再ビルド
    final count = ref.watch(counterProvider);

    // ref.listen - 値の変更を監視してコールバックを実行
    ref.listen<int>(counterProvider, (previous, next) {
      if (next >= 10) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('カウントが10以上になりました！')));
      }
    });

    return Column(
      children: [
        Text('Current count: $count'),
        ElevatedButton(
          // ref.read - 値の読み取りのみ（監視しない）
          onPressed: () => ref.read(counterProvider.notifier).increment(),
          child: const Text('Increment'),
        ),
        ElevatedButton(
          onPressed:
              () => ref
                  .read(userNotifierProvider.notifier)
                  .updateUser('田中太郎', 30),
          child: const Text('Update User'),
        ),
      ],
    );
  }
}
