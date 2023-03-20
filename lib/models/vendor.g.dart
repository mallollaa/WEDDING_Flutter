// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vendors _$VendorsFromJson(Map<String, dynamic> json) => Vendors(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String,
      image: json['image'] as String,
      contact: json['contact'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$VendorsToJson(Vendors instance) => <String, dynamic>{
      'user': instance.user,
      'title': instance.title,
      'image': instance.image,
      'contact': instance.contact,
      'description': instance.description,
    };
