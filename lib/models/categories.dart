// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wedding/models/vendor.dart';

part 'categories.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable()
class Category {
  String title;
  String image;

  Category({
    required this.title,
    required this.image,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
