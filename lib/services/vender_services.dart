import 'package:dio/dio.dart';
import 'package:wedding/models/vendor.dart';
import 'package:wedding/services/client.dart';

//--------  This Is For Venders  ------------

class VendorServices {
  Future<List<Vendors>> getServices() async {
    List<Vendors> item_Services = [];
    try {
      final Response response =
          await Client.client.get('vendor/vendor/'); //double check the api
      final List<dynamic> data = response.data;
      item_Services =
          data.map((error) => Vendors.fromJson(error)).toList(); // double check
    } catch (error) {
      print({"$error cannot reciving Item Services  data"});
    }
    return item_Services; // we return the list
  }
}
