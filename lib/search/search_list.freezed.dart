// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchList {

 String get name; String? get description;
/// Create a copy of SearchList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchListCopyWith<SearchList> get copyWith => _$SearchListCopyWithImpl<SearchList>(this as SearchList, _$identity);

  /// Serializes this SearchList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchList&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'SearchList(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SearchListCopyWith<$Res>  {
  factory $SearchListCopyWith(SearchList value, $Res Function(SearchList) _then) = _$SearchListCopyWithImpl;
@useResult
$Res call({
 String name, String? description
});




}
/// @nodoc
class _$SearchListCopyWithImpl<$Res>
    implements $SearchListCopyWith<$Res> {
  _$SearchListCopyWithImpl(this._self, this._then);

  final SearchList _self;
  final $Res Function(SearchList) _then;

/// Create a copy of SearchList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchList implements SearchList {
  const _SearchList({required this.name, this.description});
  factory _SearchList.fromJson(Map<String, dynamic> json) => _$SearchListFromJson(json);

@override final  String name;
@override final  String? description;

/// Create a copy of SearchList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchListCopyWith<_SearchList> get copyWith => __$SearchListCopyWithImpl<_SearchList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchList&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'SearchList(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SearchListCopyWith<$Res> implements $SearchListCopyWith<$Res> {
  factory _$SearchListCopyWith(_SearchList value, $Res Function(_SearchList) _then) = __$SearchListCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description
});




}
/// @nodoc
class __$SearchListCopyWithImpl<$Res>
    implements _$SearchListCopyWith<$Res> {
  __$SearchListCopyWithImpl(this._self, this._then);

  final _SearchList _self;
  final $Res Function(_SearchList) _then;

/// Create a copy of SearchList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,}) {
  return _then(_SearchList(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
