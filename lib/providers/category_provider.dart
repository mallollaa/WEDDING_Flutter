import 'package:flutter/cupertino.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/category_services.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> categories = [];

  CategoryProvider() {
    getCategories();
  }

  // Actions
  final categoriesServices = CategoryServices();

  Future<void> getCategories() async {
    final categoriesResponse = await categoriesServices.getCategories();
    categories = categoriesResponse;
    print("provider $categories");
    notifyListeners();
  }
}
