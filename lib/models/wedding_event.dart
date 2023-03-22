// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:wedding/models/services.dart';
import 'package:wedding/models/user.dart';

part 'wedding_event.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable()
class WeddingEvent {
  User user;
  String gender;
  String date;
  double budget;
  WeddingEvent({
    required this.user,
    required this.gender,
    required this.date,
    required this.budget,
  });

  factory WeddingEvent.fromJson(Map<String, dynamic> json) =>
      _$WeddingEventFromJson(json);
  Map<String, dynamic> toJson() => _$WeddingEventToJson(this);

  fromJson(data) {}
}
