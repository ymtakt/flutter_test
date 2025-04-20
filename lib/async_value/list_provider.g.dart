// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchArticlesHash() => r'6d7e7524f4193b060d04e1111330cc9dba7c1335';

/// See also [fetchArticles].
@ProviderFor(fetchArticles)
final fetchArticlesProvider =
    AutoDisposeFutureProvider<List<Articles>>.internal(
      fetchArticles,
      name: r'fetchArticlesProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$fetchArticlesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchArticlesRef = AutoDisposeFutureProviderRef<List<Articles>>;
String _$fetchArticlesWithErrorHash() =>
    r'61ebb7e1cd86cb30630fff0268888f1775d82158';

/// See also [fetchArticlesWithError].
@ProviderFor(fetchArticlesWithError)
final fetchArticlesWithErrorProvider =
    AutoDisposeFutureProvider<List<Articles>>.internal(
      fetchArticlesWithError,
      name: r'fetchArticlesWithErrorProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$fetchArticlesWithErrorHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchArticlesWithErrorRef =
    AutoDisposeFutureProviderRef<List<Articles>>;
String _$fetchArticlesWithDependencyHash() =>
    r'2214cabbc91e0e111b22ecc7ada0697bf83172a3';

/// See also [fetchArticlesWithDependency].
@ProviderFor(fetchArticlesWithDependency)
final fetchArticlesWithDependencyProvider =
    AutoDisposeFutureProvider<List<Articles>>.internal(
      fetchArticlesWithDependency,
      name: r'fetchArticlesWithDependencyProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$fetchArticlesWithDependencyHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchArticlesWithDependencyRef =
    AutoDisposeFutureProviderRef<List<Articles>>;
String _$counterHash() => r'4243b34530f53accfd9014a9f0e316fe304ada3e';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
