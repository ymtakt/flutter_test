import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_list.freezed.dart';
part 'search_list.g.dart';

@freezed
abstract class SearchList with _$SearchList {
  const factory SearchList({required String name, String? description}) =
      _SearchList;

  factory SearchList.fromJson(Map<String, dynamic> json) =>
      _$SearchListFromJson(json);
}
