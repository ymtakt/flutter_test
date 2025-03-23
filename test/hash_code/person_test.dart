import 'package:dart_flutter_practice/hash_code/person.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Person', () {
    test('同じ値を持つ2つのPersonインスタンスは同じhashCodeを持つ', () {
      final person1 = Person(name: '田中', age: 25);
      final person2 = Person(name: '田中', age: 25);

      expect(person1.hashCode, equals(person2.hashCode));
    });

    test('異なる値を持つPersonインスタンスは異なるhashCodeを持つ', () {
      final person1 = Person(name: '田中', age: 25);
      final person2 = Person(name: '鈴木', age: 30);

      expect(person1.hashCode, isNot(equals(person2.hashCode)));
    });

    test('HashMapで正しく動作することを確認', () {
      final person = Person(name: '田中', age: 25);
      final map = <Person, String>{};

      map[person] = '社員';

      final samePerson = Person(name: '田中', age: 25);
      expect(map[samePerson], equals('社員'));
    });
  });
}
