// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:wedding/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vendor.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable()
class Vendor {
  User user;
  String title;
  String image;
  int price;
  String contact;
  String description;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
  Map<String, dynamic> toJson() => _$VendorToJson(this);
  Vendor({
    required this.user,
    required this.title,
    required this.image,
    required this.price,
    required this.contact,
    required this.description,
  });
}
