import 'package:dart_flutter_practice/hash_code/person_freezed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Person Freezed Model Tests', () {
    test('同じ値を持つインスタンスは同じhashCodeを持つ', () {
      const person1 = PersonFreezed(name: '田中', age: 25);
      const person2 = PersonFreezed(name: '田中', age: 25);

      expect(person1.hashCode, equals(person2.hashCode));
      expect(person1, equals(person2));
    });

    test('異なる値を持つインスタンスは異なるhashCodeを持つ', () {
      const person1 = PersonFreezed(name: '田中', age: 25);
      const person2 = PersonFreezed(name: '鈴木', age: 25);
      const person3 = PersonFreezed(name: '田中', age: 30);

      expect(person1.hashCode, isNot(equals(person2.hashCode)));
      expect(person1.hashCode, isNot(equals(person3.hashCode)));
    });

    test('HashMapで正しく動作する', () {
      const person = PersonFreezed(name: '田中', age: 25);
      final map = <PersonFreezed, String>{};

      map[person] = '社員';

      const samePerson = PersonFreezed(name: '田中', age: 25);
      expect(map[samePerson], equals('社員'));
    });

    test('copyWithで値を変更するとhashCodeも変更される', () {
      const person1 = PersonFreezed(name: '田中', age: 25);
      final person2 = person1.copyWith(age: 30);

      expect(person1.hashCode, isNot(equals(person2.hashCode)));
    });
  });
}
