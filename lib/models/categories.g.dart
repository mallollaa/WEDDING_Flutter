// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      title: json['title'] as String,
      image: json['image'] as String,
      vendors: json['vendors'] as String,
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'vendors': instance.vendors,
    };
