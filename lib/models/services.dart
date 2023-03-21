// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wedding/models/vendor.dart';

part 'services.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable()
class Services {
  String title;
  double price;
  Vendors vendors;
  String description;
  Services({
    required this.title,
    required this.price,
    required this.vendors,
    required this.description,
  });

  factory Services.fromJson(Map<String, dynamic> json) =>
      _$ServicesFromJson(json);
  Map<String, dynamic> toJson() => _$ServicesToJson(this);
}
