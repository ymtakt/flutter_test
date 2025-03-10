// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FreezedClass {

 String get name; int get age;
/// Create a copy of FreezedClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreezedClassCopyWith<FreezedClass> get copyWith => _$FreezedClassCopyWithImpl<FreezedClass>(this as FreezedClass, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreezedClass&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,name,age);

@override
String toString() {
  return 'FreezedClass(name: $name, age: $age)';
}


}

/// @nodoc
abstract mixin class $FreezedClassCopyWith<$Res>  {
  factory $FreezedClassCopyWith(FreezedClass value, $Res Function(FreezedClass) _then) = _$FreezedClassCopyWithImpl;
@useResult
$Res call({
 String name, int age
});




}
/// @nodoc
class _$FreezedClassCopyWithImpl<$Res>
    implements $FreezedClassCopyWith<$Res> {
  _$FreezedClassCopyWithImpl(this._self, this._then);

  final FreezedClass _self;
  final $Res Function(FreezedClass) _then;

/// Create a copy of FreezedClass
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


class _FreezedClass implements FreezedClass {
  const _FreezedClass({required this.name, required this.age});
  

@override final  String name;
@override final  int age;

/// Create a copy of FreezedClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreezedClassCopyWith<_FreezedClass> get copyWith => __$FreezedClassCopyWithImpl<_FreezedClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreezedClass&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,name,age);

@override
String toString() {
  return 'FreezedClass(name: $name, age: $age)';
}


}

/// @nodoc
abstract mixin class _$FreezedClassCopyWith<$Res> implements $FreezedClassCopyWith<$Res> {
  factory _$FreezedClassCopyWith(_FreezedClass value, $Res Function(_FreezedClass) _then) = __$FreezedClassCopyWithImpl;
@override @useResult
$Res call({
 String name, int age
});




}
/// @nodoc
class __$FreezedClassCopyWithImpl<$Res>
    implements _$FreezedClassCopyWith<$Res> {
  __$FreezedClassCopyWithImpl(this._self, this._then);

  final _FreezedClass _self;
  final $Res Function(_FreezedClass) _then;

/// Create a copy of FreezedClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,}) {
  return _then(_FreezedClass(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
