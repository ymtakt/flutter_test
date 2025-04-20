import 'package:dart_flutter_practice/async_value/articles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_provider.g.dart';


// 通常の記事を取得するプロバイダー
@riverpod
Future<List<Articles>> fetchArticles(Ref ref) async {
  // 仮想的に非同期でデータを取得する
  await Future.delayed(const Duration(seconds: 3));

  return [
    const Articles(id: '1', title: 'title1'),
    const Articles(id: '2', title: 'title2'),
  ];  
}


// エラーを発生させるプロバイダー
@riverpod
Future<List<Articles>> fetchArticlesWithError(Ref ref) async {
  // 仮想的に非同期でデータを取得してからエラーを発生させる
  await Future.delayed(const Duration(seconds: 3));
  throw Exception('エラーが発生しました');
}

// 依存関係のあるプロバイダー（isReloadingをテストするため）
@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;
  
  void increment() => state++;
}

// counterプロバイダーに依存するプロバイダー
@riverpod
Future<List<Articles>> fetchArticlesWithDependency(Ref ref) async {
  // counterの値を監視する（依存関係を作る）
  // こいつの影響でisReloadingがtrueになるはず
  final count = ref.watch(counterProvider);
  
  // 仮想的に非同期でデータを取得する
  await Future.delayed(const Duration(seconds: 3));
  
  return [
    Articles(id: '1', title: 'title1 - count: $count'),
    Articles(id: '2', title: 'title2 - count: $count'),
  ];
}