// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable() // this should be befor the class
class User {
  int? id;
  String username;
  String? password;
  String? firsname;
  String? lastname;
  String? email;

  User({
    this.id,
    required this.username,
    this.password,
    this.firsname,
    this.lastname,
    this.email,
  });
  // String username?

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
