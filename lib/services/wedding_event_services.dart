//--------  for the wedding serviy ------------
import 'package:dio/dio.dart';

import 'package:wedding/models/wedding_event.dart';
import 'package:wedding/services/client.dart';

class WeddingEventServices {
  Future<List<WeddingEvent>> getWeddingEvent() async {
    List<WeddingEvent> wedding_event = [];
    try {
      final Response response = await Client.client
          .get('vendor/api/wedding_event/<int:id>'); //double check the api
      final List<dynamic> data = response.data;
      wedding_event = data
          .map((error) => WeddingEvent.fromJson(error))
          .toList(); // double check
    } catch (error) {
      print({"$error reciving wedding event data"});
    }
    return wedding_event; // we return the list
  }
}
