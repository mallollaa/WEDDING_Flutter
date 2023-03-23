// import 'package:flutter/cupertino.dart';
// import 'package:wedding/models/categories.dart';
// import 'package:wedding/services/category_services.dart';

// // ------------ Venders Provider -------------
// class VendorProvider with ChangeNotifier {
//   List<Category> categories = [];

//   VendorProvider() {
//     getVendors();
//   }

//   // Actions
//   final vendorsServices = VendorsServices();

//   Future<void> getCategories() async {
//     final categoriesResponse = await VendorsServices.getVendors();
//     categories = categoriesResponse;
//     print("provider $categories");
//     notifyListeners();
//   }
// }
