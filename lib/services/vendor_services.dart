// import 'package:dio/dio.dart';
// import 'package:wedding/models/categories.dart';
// import 'package:wedding/pages/buttombar/vendors/vendors.dart';
// import 'package:wedding/services/client.dart';

// class VendorServices {
//   Future<List<Vendors>> getVendors() async {
//     List<Vendors> vendors = [];
//     try {
//       final Response response =
//           await Client.client.get('vendor/api/categories/');
//       final List<dynamic> data = response.data;
//       vendors = data.map((e) => Vendors.fromJson(e)).toList();
//     } catch (e) {
//       print(e);
//     }
//     return vendors;
//   }

//   // static Future<List<Categories>> getCategories() async {
//   //   final client = Client.client;
//   //   List<Categories> category = [];
//   //   final response = await client.get('vendor/api/categories/');
//   //   category =
//   //       (response.data as List).map((e) => Categories.fromJson(e)).toList();
//   //   return category;
//   //   // }
//   //   //       throw Exception('Failed to get categories');
//   //   //     }
//   //   //   } catch (e) {
//   //   //     throw Exception('Failed to get categories: $e');
//   // }
// }
