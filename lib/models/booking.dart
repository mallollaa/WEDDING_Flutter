// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wedding/models/services.dart';
import 'package:wedding/models/wedding_event.dart';

part 'booking.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable()
class Booking {
  int? id; // check the naming in postman
  WeddingEvent wedding_event;
  Services service;
  String booking_date;
  Booking({
    required this.wedding_event,
    required this.service,
    required this.booking_date,
    this.id,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
  Map<String, dynamic> toJson() => _$BookingToJson(this);
}
