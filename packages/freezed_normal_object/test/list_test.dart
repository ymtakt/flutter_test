import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Two lists with same values are not equal using ==', () {
    final list1 = [1, 2, 3];
    final list2 = [1, 2, 3];

    expect(list1 == list2, false);
  });

  test('Two const lists with same values are equal using ==', () {
    const list1 = [1, 2, 3];
    const list2 = [1, 2, 3];

    expect(list1 == list2, true);
  });
}