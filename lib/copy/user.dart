import 'package:dart_flutter_practice/copy/address.dart';

class User {
  String name;
  int age;
  Address address;
  List<String> hobbies;

  User({
    required this.name,
    required this.age,
    required this.address,
    required this.hobbies,
  });

  // copyWithメソッド - 特定のフィールドだけを更新
  User copyWith({
    String? name,
    int? age,
    Address? address,
    List<String>? hobbies,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
      address: address ?? this.address,
      hobbies: hobbies ?? this.hobbies,
    );
  }

  // DeepCopy - 完全に新しいインスタンスを作成
  User deepCopy() {
    return User(
      name: name,
      age: age,
      address: address.deepCopy(), // Addressも新しいインスタンスを作成
      hobbies: List.from(hobbies), // リストも新しいインスタンスを作成
    );
  }

  // ShallowCopy - 参照を共有する浅いコピー
  User shallowCopy() {
    return User(
      name: name,
      age: age,
      address: address, // 同じAddressインスタンスを参照
      hobbies: hobbies, // 同じリストを参照
    );
  }
}
