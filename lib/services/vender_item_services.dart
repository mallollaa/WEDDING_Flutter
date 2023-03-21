import 'package:dio/dio.dart';
import 'package:wedding/models/services.dart';
import 'package:wedding/services/client.dart';

//--------  This Is For List Of Servicses  ------------

class ItemVenderServices {
  Future<List<Services>> getServices() async {
    List<Services> item_Services = [];
    try {
      final Response response = await Client.client
          .get('vendor/api/vendor/services/<int:id>'); //double check the api
      final List<dynamic> data = response.data;
      item_Services = data
          .map((error) => Services.fromJson(error))
          .toList(); // double check
    } catch (error) {
      print({"$error cannot reciving Item Services  data"});
    }
    return item_Services; // we return the list
  }
}
