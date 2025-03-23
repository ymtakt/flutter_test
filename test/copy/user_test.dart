import 'package:dart_flutter_practice/copy/address.dart';
import 'package:dart_flutter_practice/copy/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('コピー方法の違いテスト', () {
    late User originalUser;

    setUp(() {
      originalUser = User(
        name: '田中太郎',
        age: 30,
        address: Address(street: '桜通り', city: '東京'),
        hobbies: ['読書', '散歩'],
      );
    });

    test('copyWithは指定したフィールドのみを更新', () {
      final updatedUser = originalUser.copyWith(age: 31, name: '田中次郎');

      // 更新したフィールドは新しい値
      expect(updatedUser.age, equals(31));
      expect(updatedUser.name, equals('田中次郎'));

      // 更新していないフィールドは元の参照を維持
      expect(updatedUser.address, same(originalUser.address));
      expect(updatedUser.hobbies, same(originalUser.hobbies));

      // 元のオブジェクトは変更されていない
      expect(originalUser.age, equals(30));
      expect(originalUser.name, equals('田中太郎'));
    });

    test('DeepCopyは完全に新しいインスタンスを作成', () {
      final deepCopiedUser = originalUser.deepCopy();

      // 値は同じ
      expect(deepCopiedUser.name, equals(originalUser.name));
      expect(deepCopiedUser.age, equals(originalUser.age));
      expect(
        deepCopiedUser.address.street,
        equals(originalUser.address.street),
      );
      expect(deepCopiedUser.hobbies, equals(originalUser.hobbies));

      // 参照は異なる
      expect(deepCopiedUser.address, isNot(same(originalUser.address)));
      expect(deepCopiedUser.hobbies, isNot(same(originalUser.hobbies)));

      // DeepCopyしたオブジェクトの変更は元のオブジェクトに影響しない
      deepCopiedUser.address.street = '新しい通り';
      deepCopiedUser.hobbies.add('料理');

      expect(originalUser.address.street, equals('桜通り'));
      expect(originalUser.hobbies, equals(['読書', '散歩']));
    });

    test('ShallowCopyは参照を共有', () {
      final shallowCopiedUser = originalUser.shallowCopy();

      // 値は同じ
      expect(shallowCopiedUser.name, equals(originalUser.name));
      expect(shallowCopiedUser.age, equals(originalUser.age));

      // 参照も同じ
      expect(shallowCopiedUser.address, same(originalUser.address));
      expect(shallowCopiedUser.hobbies, same(originalUser.hobbies));

      // ShallowCopyしたオブジェクトの変更は元のオブジェクトにも影響する
      shallowCopiedUser.address.street = '新しい通り';
      shallowCopiedUser.hobbies.add('料理');

      expect(originalUser.address.street, equals('新しい通り'));
      expect(originalUser.hobbies, equals(['読書', '散歩', '料理']));
    });
  });
}
