// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterStreamHash() => r'07230f23d882e2d113f71e62ed10633a23ef1526';

/// See also [counterStream].
@ProviderFor(counterStream)
final counterStreamProvider = AutoDisposeStreamProvider<int>.internal(
  counterStream,
  name: r'counterStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$counterStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterStreamRef = AutoDisposeStreamProviderRef<int>;
String _$textControllerHash() => r'a47f40941b4798d6304f74bb535dd8c415623ecf';

/// See also [textController].
@ProviderFor(textController)
final textControllerProvider =
    AutoDisposeProvider<TextEditingController>.internal(
      textController,
      name: r'textControllerProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$textControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TextControllerRef = AutoDisposeProviderRef<TextEditingController>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
