import 'package:dio/dio.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/client.dart';

class CategoryServices {
  Future<List<Category>> getCategories() async {
    List<Category> categories = [];
    try {
      final Response response =
          await Client.client.get('vendor/api/categories/');
      final List<dynamic> data = response.data;
      categories = data.map((e) => Category.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return categories;
  }

  // static Future<List<Categories>> getCategories() async {
  //   final client = Client.client;
  //   List<Categories> category = [];
  //   final response = await client.get('vendor/api/categories/');
  //   category =
  //       (response.data as List).map((e) => Categories.fromJson(e)).toList();
  //   return category;
  //   // }
  //   //       throw Exception('Failed to get categories');
  //   //     }
  //   //   } catch (e) {
  //   //     throw Exception('Failed to get categories: $e');
  // }
}
