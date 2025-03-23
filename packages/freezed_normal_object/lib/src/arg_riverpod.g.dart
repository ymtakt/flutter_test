// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arg_riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$intArgHash() => r'b9a76e068931af7218c080efdf420bd884d256d5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$IntArg extends BuildlessAutoDisposeNotifier<int> {
  late final int arg;

  int build(int arg);
}

/// See also [IntArg].
@ProviderFor(IntArg)
const intArgProvider = IntArgFamily();

/// See also [IntArg].
class IntArgFamily extends Family<int> {
  /// See also [IntArg].
  const IntArgFamily();

  /// See also [IntArg].
  IntArgProvider call(int arg) {
    return IntArgProvider(arg);
  }

  @override
  IntArgProvider getProviderOverride(covariant IntArgProvider provider) {
    return call(provider.arg);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'intArgProvider';
}

/// See also [IntArg].
class IntArgProvider extends AutoDisposeNotifierProviderImpl<IntArg, int> {
  /// See also [IntArg].
  IntArgProvider(int arg)
    : this._internal(
        () => IntArg()..arg = arg,
        from: intArgProvider,
        name: r'intArgProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$intArgHash,
        dependencies: IntArgFamily._dependencies,
        allTransitiveDependencies: IntArgFamily._allTransitiveDependencies,
        arg: arg,
      );

  IntArgProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arg,
  }) : super.internal();

  final int arg;

  @override
  int runNotifierBuild(covariant IntArg notifier) {
    return notifier.build(arg);
  }

  @override
  Override overrideWith(IntArg Function() create) {
    return ProviderOverride(
      origin: this,
      override: IntArgProvider._internal(
        () => create()..arg = arg,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        arg: arg,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<IntArg, int> createElement() {
    return _IntArgProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IntArgProvider && other.arg == arg;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arg.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IntArgRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `arg` of this provider.
  int get arg;
}

class _IntArgProviderElement
    extends AutoDisposeNotifierProviderElement<IntArg, int>
    with IntArgRef {
  _IntArgProviderElement(super.provider);

  @override
  int get arg => (origin as IntArgProvider).arg;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
