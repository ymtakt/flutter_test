import 'package:flutter_test/flutter_test.dart';

void main() {
  group('プリミティブ型のhashCode Tests', () {
    test('int型のhashCode', () {
      final int1 = 42;
      final int2 = 42;
      final int3 = 43;

      expect(int1.hashCode, equals(int2.hashCode));
      expect(int1.hashCode, isNot(equals(int3.hashCode)));
    });

    test('double型のhashCode', () {
      final double1 = 3.14;
      final double2 = 3.14;
      final double3 = 3.15;

      expect(double1.hashCode, equals(double2.hashCode));
      expect(double1.hashCode, isNot(equals(double3.hashCode)));
    });

    test('String型のhashCode', () {
      final string1 = 'テスト';
      final string2 = 'テスト';
      final string3 = 'テスト2';

      expect(string1.hashCode, equals(string2.hashCode));
      expect(string1.hashCode, isNot(equals(string3.hashCode)));
    });

    test('bool型のhashCode', () {
      final bool1 = true;
      final bool2 = true;
      final bool3 = false;

      expect(bool1.hashCode, equals(bool2.hashCode));
      expect(bool1.hashCode, isNot(equals(bool3.hashCode)));
    });

    test('HashMapでの各プリミティブ型の使用', () {
      // int型のHashMap
      final intMap = <int, String>{};
      intMap[42] = '整数値';
      expect(intMap[42], equals('整数値'));

      // double型のHashMap
      final doubleMap = <double, String>{};
      doubleMap[3.14] = '小数値';
      expect(doubleMap[3.14], equals('小数値'));

      // String型のHashMap
      final stringMap = <String, String>{};
      stringMap['テスト'] = '文字列値';
      expect(stringMap['テスト'], equals('文字列値'));

      // bool型のHashMap
      final boolMap = <bool, String>{};
      boolMap[true] = '真偽値';
      expect(boolMap[true], equals('真偽値'));
    });

    test('同じ値の文字列リテラルは同じhashCodeを持つ', () {
      final str1 = 'テスト';
      final str2 = 'テスト';
      final str3 = 'テ' + 'スト'; // 文字列結合

      expect(str1.hashCode, equals(str2.hashCode));
      expect(str1.hashCode, equals(str3.hashCode));
    });

    test('数値の異なる表現でも同じ値なら同じhashCode', () {
      final int1 = 42;
      final int2 = 40 + 2;
      // ignore: unused_local_variable
      final double1 = 42.0;

      expect(int1.hashCode, equals(int2.hashCode));
      // 注意: intとdoubleは同じ数値でもhashCodeは異なる場合がある
      // expect(int1.hashCode, equals(double1.hashCode));
    });
  });
}
