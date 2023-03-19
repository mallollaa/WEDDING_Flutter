// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable()
class Categories {
  String? title;
  AssetImage? image;
  String? vendors;

  Categories({
    required this.title,
    this.image,
    this.vendors,
  });
  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}
