// import 'package:flutter/cupertino.dart';

// // ------------- Vender Services Item Provider ----------
// class ServicesItemProvider with ChangeNotifier {
//   List<Category> categories = [];

//   CategoryProvider() {
//     getCategories();
//   }

//   // Actions
//   final categoriesServices = CategoryServices();

//   Future<void> getCategories() async {
//     final categoriesResponse = await categoriesServices.getCategories();
//     categories = categoriesResponse;
//     print("provider $categories");
//     notifyListeners();
//   }
// }
