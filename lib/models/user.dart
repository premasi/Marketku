import 'dart:convert';

class User {
  final String id;
  final String fullname;
  final String email;
  final String password;
  final String city;
  final String fullAddress;

  User(
      {required this.id,
      required this.fullname,
      required this.email,
      required this.password,
      required this.city,
      required this.fullAddress});

  //serialization
  //convert user object to map
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "fullname": fullname,
      "email": email,
      "password": password,
      "city": city,
      "fullAddress": fullAddress,
    };
  }

  //convert map to json string
  String toJson() => jsonEncode(toMap());

  //Deserialization
  //convert map to user object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['_id'] as String? ?? "",
        fullname: map['fullname'] as String? ?? "",
        email: map['email'] as String? ?? "",
        password: map['password'] as String? ?? "",
        city: map['city'] as String? ?? "",
        fullAddress: map['fullAddress'] as String? ?? "");
  }
}
