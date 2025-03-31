import 'package:flutter_test/flutter_test.dart';
import 'package:dart_flutter_practice/copy_with/normal_class.dart';

void main() {
  test('ノーマルクラスの比較テスト', () {
    final originalPerson = Person(name: '田中太郎', age: 20);
    final originalPerson2 = Person(name: '田中太郎', age: 20);

    print("originalPerson : ${originalPerson.hashCode}"); // 98648284
    // print("originalPerson2 : ${originalPerson2.hashCode}");// 662148258

    //  external int get hashCode;

    // print("originalPerson：${identityHashCode(originalPerson)}"); //98648284
    // print("originalPerson2：${identityHashCode(originalPerson2)}"); //662148258

    expect(originalPerson == originalPerson2, false);
    expect(identical(originalPerson, originalPerson2), false);
    expect(originalPerson.hashCode == originalPerson2.hashCode, false);

    // expect(originalPerson.hashCode == identityHashCode(originalPerson), true);
  });
}
