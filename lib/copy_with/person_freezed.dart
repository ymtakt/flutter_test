import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_freezed.freezed.dart';

@freezed
abstract class PersonFreezed with _$PersonFreezed {
  const factory PersonFreezed({required String name, required int age}) =
      _PersonFreezed;
}
