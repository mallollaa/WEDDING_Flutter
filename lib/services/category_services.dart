import 'package:dio/dio.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/client.dart';

class CategoryServices {
  static Future<List<Categories>> getCategories() async {
    final client = Client.client;

    try {
      final response = await client.get('vendor/category/');

      if (response.statusCode == 200) {
        final categoriesJson = response.data;
        final categoriesList = <Categories>[];

        for (var categoryJson in categoriesJson) {
          final category = Categories(
            title: categoryJson['title'],
            image: categoryJson['image'],
          );
          categoriesList.add(category);
        }

        return categoriesList;
      } else {
        throw Exception('Failed to get categories');
      }
    } catch (e) {
      throw Exception('Failed to get categories: $e');
    }
  }
}
