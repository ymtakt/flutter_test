// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Articles {

 String get id; String get title;
/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesCopyWith<Articles> get copyWith => _$ArticlesCopyWithImpl<Articles>(this as Articles, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Articles&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'Articles(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $ArticlesCopyWith<$Res>  {
  factory $ArticlesCopyWith(Articles value, $Res Function(Articles) _then) = _$ArticlesCopyWithImpl;
@useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class _$ArticlesCopyWithImpl<$Res>
    implements $ArticlesCopyWith<$Res> {
  _$ArticlesCopyWithImpl(this._self, this._then);

  final Articles _self;
  final $Res Function(Articles) _then;

/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Articles implements Articles {
  const _Articles({required this.id, required this.title});
  

@override final  String id;
@override final  String title;

/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesCopyWith<_Articles> get copyWith => __$ArticlesCopyWithImpl<_Articles>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Articles&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'Articles(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$ArticlesCopyWith<$Res> implements $ArticlesCopyWith<$Res> {
  factory _$ArticlesCopyWith(_Articles value, $Res Function(_Articles) _then) = __$ArticlesCopyWithImpl;
@override @useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class __$ArticlesCopyWithImpl<$Res>
    implements _$ArticlesCopyWith<$Res> {
  __$ArticlesCopyWithImpl(this._self, this._then);

  final _Articles _self;
  final $Res Function(_Articles) _then;

/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_Articles(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
