import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_class.freezed.dart';

@freezed
abstract class FreezedClass with _$FreezedClass {
  const factory FreezedClass({required String name, required int age}) =
      _FreezedClass;
}
