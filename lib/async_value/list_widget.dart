import 'package:dart_flutter_practice/async_value/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


// AsyncValueの状態を表示するWidget
class AsyncValueStateChecker extends ConsumerWidget {
  const AsyncValueStateChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3つの異なるプロバイダーを監視
    final articlesAsync = ref.watch(fetchArticlesProvider);
    final articlesWithErrorAsync = ref.watch(fetchArticlesWithErrorProvider);
    final articlesWithDependencyAsync = ref.watch(fetchArticlesWithDependencyProvider);
    
    return Scaffold(
      appBar: AppBar(title: const Text('AsyncValue State Checker')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _AsyncValueStateSection(
              title: '通常のプロバイダー',
              asyncValue: articlesAsync,
            ),
            _AsyncValueStateSection(
              title: 'エラーのあるプロバイダー',
              asyncValue: articlesWithErrorAsync,
            ),
            _AsyncValueStateSection(
              title: '依存関係のあるプロバイダー',
              asyncValue: articlesWithDependencyAsync,
            ),
            const SizedBox(height: 20),
            ControlButtons(ref: ref),
          ],
        ),
      ),
    );
  }
}

class _AsyncValueStateSection<T> extends StatelessWidget {
  const _AsyncValueStateSection({
    required this.title,
    required this.asyncValue,
  });

  final String title;
  final AsyncValue<T> asyncValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(),
            _StatePropertyRow(name: 'isLoading', value: asyncValue.isLoading),
            _StatePropertyRow(name: 'hasValue', value: asyncValue.hasValue),
            _StatePropertyRow(name: 'hasError', value: asyncValue.hasError),
            _StatePropertyRow(name: 'isRefreshing', value: asyncValue.isRefreshing),
            _StatePropertyRow(name: 'isReloading', value: asyncValue.isReloading),
            const SizedBox(height: 8),
            _ValueDisplay(asyncValue: asyncValue),
            if (asyncValue.hasError)
              _ErrorDisplay(error: asyncValue.error),
            _AsyncValueDataDisplay(asyncValue: asyncValue),
          ],
        ),
      ),
    );
  }
}

class _StatePropertyRow extends StatelessWidget {
  const _StatePropertyRow({
    required this.name,
    required this.value,
  });
  final String name;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$name: ', style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value.toString(), 
          style: TextStyle(color: value ? Colors.green : Colors.grey)),
      ],
    );
  }
}

class _ValueDisplay<T> extends StatelessWidget {
  const _ValueDisplay({
    required this.asyncValue,
  });

  final AsyncValue<T> asyncValue;

  @override
  Widget build(BuildContext context) {
    return Text('値: ${asyncValue.valueOrNull}');
  }
}

class _ErrorDisplay extends StatelessWidget {
  final Object? error;

  const _ErrorDisplay({
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Text('エラー: $error', style: const TextStyle(color: Colors.red));
  }
}

class _AsyncValueDataDisplay<T> extends StatelessWidget {
  final AsyncValue<T> asyncValue;

  const _AsyncValueDataDisplay({
    required this.asyncValue,
  });

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (data) => Text('データ: $data', style: const TextStyle(color: Colors.green)),
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('エラー処理中: $error', 
          style: const TextStyle(color: Colors.orange)),
      skipLoadingOnRefresh: false,
    );
  }
}

class ControlButtons extends StatelessWidget {
  final WidgetRef ref;

  const ControlButtons({
    Key? key,
    required this.ref,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            ref.invalidate(fetchArticlesProvider);
            ref.invalidate(fetchArticlesWithErrorProvider);
            ref.invalidate(fetchArticlesWithDependencyProvider);
          }, 
          child: const Text('全てリフレッシュ：isRefreshingがtrueになる')
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(counterProvider.notifier).increment();
          }, 
          child: const Text('カウンター増加：依存関係のある値の更新isReloadingがtrueになる')
        ),
      ],
    );
  }
}