// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wedding_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeddingEvent _$WeddingEventFromJson(Map<String, dynamic> json) => WeddingEvent(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      gender: json['gender'] as String,
      date: json['date'] as String,
      budget: (json['budget'] as num).toDouble(),
    );

Map<String, dynamic> _$WeddingEventToJson(WeddingEvent instance) =>
    <String, dynamic>{
      'user': instance.user,
      'gender': instance.gender,
      'date': instance.date,
      'budget': instance.budget,
    };
