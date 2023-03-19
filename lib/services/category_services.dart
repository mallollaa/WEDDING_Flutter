import 'package:dio/dio.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/client.dart';

class CategoryServices {
  static Future<List<Categories>> getCategories() async {
    final client = Client.client;
    List<Categories> category = [];
    final response = await client.get('vendor/category/');
    category =
        (response.data as List).map((e) => Categories.fromJson(e)).toList();
    return category;
    // }
    //       throw Exception('Failed to get categories');
    //     }
    //   } catch (e) {
    //     throw Exception('Failed to get categories: $e');
  }
}
