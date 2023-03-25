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
}
