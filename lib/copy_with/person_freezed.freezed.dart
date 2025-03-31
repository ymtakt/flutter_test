// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonFreezed {

 String get name; int get age;
/// Create a copy of PersonFreezed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonFreezedCopyWith<PersonFreezed> get copyWith => _$PersonFreezedCopyWithImpl<PersonFreezed>(this as PersonFreezed, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonFreezed&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,name,age);

@override
String toString() {
  return 'PersonFreezed(name: $name, age: $age)';
}


}

/// @nodoc
abstract mixin class $PersonFreezedCopyWith<$Res>  {
  factory $PersonFreezedCopyWith(PersonFreezed value, $Res Function(PersonFreezed) _then) = _$PersonFreezedCopyWithImpl;
@useResult
$Res call({
 String name, int age
});




}
/// @nodoc
class _$PersonFreezedCopyWithImpl<$Res>
    implements $PersonFreezedCopyWith<$Res> {
  _$PersonFreezedCopyWithImpl(this._self, this._then);

  final PersonFreezed _self;
  final $Res Function(PersonFreezed) _then;

/// Create a copy of PersonFreezed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? age = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _PersonFreezed implements PersonFreezed {
  const _PersonFreezed({required this.name, required this.age});
  

@override final  String name;
@override final  int age;

/// Create a copy of PersonFreezed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonFreezedCopyWith<_PersonFreezed> get copyWith => __$PersonFreezedCopyWithImpl<_PersonFreezed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonFreezed&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,name,age);

@override
String toString() {
  return 'PersonFreezed(name: $name, age: $age)';
}


}

/// @nodoc
abstract mixin class _$PersonFreezedCopyWith<$Res> implements $PersonFreezedCopyWith<$Res> {
  factory _$PersonFreezedCopyWith(_PersonFreezed value, $Res Function(_PersonFreezed) _then) = __$PersonFreezedCopyWithImpl;
@override @useResult
$Res call({
 String name, int age
});




}
/// @nodoc
class __$PersonFreezedCopyWithImpl<$Res>
    implements _$PersonFreezedCopyWith<$Res> {
  __$PersonFreezedCopyWithImpl(this._self, this._then);

  final _PersonFreezed _self;
  final $Res Function(_PersonFreezed) _then;

/// Create a copy of PersonFreezed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,}) {
  return _then(_PersonFreezed(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
