import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles.freezed.dart';

@freezed
abstract class Articles with _$Articles {
  const factory Articles({
    required String id,
    required String title,
  }) = _Articles;
}
