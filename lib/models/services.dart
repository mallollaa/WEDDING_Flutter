import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wedding/models/vendor.dart';

part 'services.g.dart';

@JsonSerializable()
class Services {
  String title;
  double price;
  int? vendors;
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
