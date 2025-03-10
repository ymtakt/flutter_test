import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'arg_riverpod.g.dart';

@riverpod
class IntArg extends _$IntArg {
  @override
  int build(int arg) {
    return arg;
  }

  void updateValue(int arg) {
    state = arg;
  }
}
