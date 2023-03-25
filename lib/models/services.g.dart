// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Services _$ServicesFromJson(Map<String, dynamic> json) => Services(
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      vendors: json['vendors'] as int?,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ServicesToJson(Services instance) => <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'vendors': instance.vendors,
      'description': instance.description,
    };
