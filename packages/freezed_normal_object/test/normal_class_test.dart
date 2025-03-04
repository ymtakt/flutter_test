import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_normal_object/normal_class.dart';

void main() {
  test('NormalClass should create an instance with given values', () {
    final normalClass1 = NormalClass(name: 'John', age: 30);
    final normalClass2 = NormalClass(name: 'John', age: 30);

    expect(normalClass1 == normalClass2, false);
  });
}
