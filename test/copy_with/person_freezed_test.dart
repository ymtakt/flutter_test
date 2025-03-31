import 'package:dart_flutter_practice/copy_with/person_freezed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('オブジェクトの同一性を確認する', () {
    // testの前に実行される
    final originalPerson = PersonFreezed(name: '田中太郎', age: 20);
    final originalPerson2 = PersonFreezed(name: '田中太郎', age: 20);

    // `originalPerson` をコピーして新しいインスタンスを作成
    final copiedPerson = originalPerson.copyWith(name: '田中次郎', age: 31);

    // print("originalPerson : ${originalPerson.hashCode}"); //123055738
    // print("originalPerson2 : ${originalPerson2.hashCode}"); //123055738
    // print("copiedPerson : ${copiedPerson.hashCode}"); //356766686 => 値が変わったのでハッシュコードも変わる

    //　✅　同じ値のインスタンスは同じハッシュコードになる
    //
    // @override
    // int get hashCode => Object.hash(runtimeType,name,age);
    // ↑
    // このようにオーバーライドされているので、同じ値のインスタンスは同じハッシュコードになる
    // オブジェクトの値でハッシュコードを生成しているので、値が変わったらハッシュコードも変わる。

    // identityHashCodeは元々のオブジェクトの識別子（アイデンティティ）に基づいてハッシュコードを生成する。
    // そのため、同じ値のインスタンスでもハッシュコードが異なる。(originalPersonとoriginalPerson2は厳密にはハッシュコードが違うので)

    // print('originalPersonの識別子: ${identityHashCode(originalPerson)}'); // 626812788
    // print('originalPerson2の識別子: ${identityHashCode(originalPerson2)}'); // 380899593
    // print('copiedPersonの識別子: ${identityHashCode(copiedPerson)}'); //84894760

    // ✅　ノーマルクラスだと`identityHashCode`と`hashCode`が同じになるが、freezedだと`identityHashCode`と`hashCode`が異なる
    //     ノーマルクラスの場合、逆に同じ値のインスタンスは違うハッシュコードになる

    // ❓ `identityHashCode` は本来のhashCodeを返すということ？
    //    ノーマルクラスの場合は`identityHashCode`と`hashCode`が同じになる。

    // == Freezedで以下のようにオーバーライドされているので 同じ値のインスタンスはtrueになる
    //
    // @override
    // bool operator ==(Object other) {
    //   return identical(this, other) ||  // 1. 完全に同じインスタンスかチェック
    //     (
    //       other.runtimeType == runtimeType &&  // 2. 同じ型かチェック
    //       other is PersonFreezed &&           // 3. PersonFreezed型かチェック
    //       (
    //         identical(other.name, name) ||    // 4a. nameが同じインスタンスか
    //         other.name == name               // 4b. または同じ値か
    //       ) &&
    //       (
    //         identical(other.age, age) ||     // 5a. ageが同じインスタンスか
    //         other.age == age                // 5b. または同じ値か
    //       )
    //     );
    // }

    // 同じ値のインスタンスはtrueになる
    expect(originalPerson == originalPerson2, true);

    // identicalは参照（メモリアドレス）を比較する
    // 値が同じでもインスタンス自体は別なのでfalseになる
    expect(identical(originalPerson, originalPerson2), false);

    // 値もインスタンスも違うのでfalse
    expect(identical(originalPerson, copiedPerson), false);
  });
}
