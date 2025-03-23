/// DeepCopy のためのクラス
class Address {
  String street;
  String city;

  Address({required this.street, required this.city});

  // DeepCopyのためのメソッド
  Address deepCopy() {
    return Address(street: street, city: city);
  }
}
