import 'package:dio/dio.dart';
import 'package:wedding/models/services.dart';
import 'package:wedding/services/client.dart';

class ItemVenderServices {
  Future<List<Services>> getServices() async {
    List<Services> item_Services = [];
    try {
      final Response response = await Client.client.get('api/vendor/services/');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        print('JSON data before deserialization: $data');
        item_Services = data.map((e) => Services.fromJson(e)).toList();
        print('JSON data after deserialization: $item_Services');
      } else {
        print('Request failed with status code: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }
    return item_Services;
  }
}
