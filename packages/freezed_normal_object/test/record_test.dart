import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Two records with same values are not equal using ==', () {
    final record1 = (1, 2, 3);
    final record2 = (1, 2, 3);

    expect(record1 == record2, true);
  });

  test('Two const records with same values are equal using ==', () {
    const record1 = (1, 2, 3);
    const record2 = (1, 2, 3);

    expect(record1 == record2, true);
  });
}