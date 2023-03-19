// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vendor _$VendorFromJson(Map<String, dynamic> json) => Vendor(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String,
      image: json['image'] as String,
      price: json['price'] as int,
      contact: json['contact'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$VendorToJson(Vendor instance) => <String, dynamic>{
      'user': instance.user,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'contact': instance.contact,
      'description': instance.description,
    };
