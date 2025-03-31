import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'search_list.dart';

part 'search_provider.g.dart';

const searchList = [
  SearchList(name: '田中太郎', description: '田中太郎の説明'),
  SearchList(name: '田中次郎', description: '田中次郎の説明'),
  SearchList(name: '田中三郎', description: '田中三郎の説明'),
];

@riverpod
class SearchProvider extends _$SearchProvider {
  @override
  List<SearchList> build() {
    return searchList;
  }

  void search(String name) {
    state = searchList.where((element) => element.name == name).toList();
  }
}
