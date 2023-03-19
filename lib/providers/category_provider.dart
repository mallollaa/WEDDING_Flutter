import 'package:flutter/cupertino.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/category_services.dart';

class CategoryProvider with ChangeNotifier {
  List<Categories> _categories = [];
  bool _isLoading = false;
  List<Categories> get categories => _categories;
  bool get isLoading => _isLoading;

  Future<void> getCategories() async {
    _isLoading = true;
    // notifyListeners();

    try {
      _categories = await CategoryServices.getCategories();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      throw e;
    }
  }
}
