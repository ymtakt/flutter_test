import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_normal_object/src/freezed_class.dart';

void main() {
  test('FreezedClass should create an instance with given values', () {
    final freezedClass1 = FreezedClass(name: 'John', age: 30);
    final freezedClass2 = FreezedClass(name: 'John', age: 30);

    final freezedClass3 = freezedClass2;

    expect(freezedClass1 == freezedClass2, true);
    expect(identical(freezedClass1, freezedClass2), false);
    expect(identical(freezedClass2, freezedClass3), isTrue);
  });
}
