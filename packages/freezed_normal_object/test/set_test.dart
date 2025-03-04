import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Two sets with same values are equal using ==', () {
    final set1 = {1, 2, 3};
    final set2 = {1, 2, 3};

    expect(set1 == set2, false);
  });

  test('Two const sets with same values are equal using ==', () {
    const set1 = {1, 2, 3};
    const set2 = {1, 2, 3};

    expect(set1 == set2, true);
  });
}
