import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
}

@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  User? build() => null;

  void updateUser(String name, int age) {
    state = User(name: name, age: age);
  }
}
