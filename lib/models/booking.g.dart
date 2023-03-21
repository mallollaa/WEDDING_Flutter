// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      wedding_event:
          WeddingEvent.fromJson(json['wedding_event'] as Map<String, dynamic>),
      service: Services.fromJson(json['service'] as Map<String, dynamic>),
      booking_date: json['booking_date'] as String,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'id': instance.id,
      'wedding_event': instance.wedding_event,
      'service': instance.service,
      'booking_date': instance.booking_date,
    };
