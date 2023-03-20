// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:wedding/models/user.dart';

part 'vendor.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable()
class Vendors {
  User user;
  String title;
  String image;
  String contact;
  String description;

  factory Vendors.fromJson(Map<String, dynamic> json) =>
      _$VendorsFromJson(json);
  Map<String, dynamic> toJson() => _$VendorsToJson(this);

  Vendors({
    required this.user,
    required this.title,
    required this.image,
    required this.contact,
    required this.description,
  });
}
