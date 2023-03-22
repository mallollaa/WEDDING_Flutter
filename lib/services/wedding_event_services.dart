//--------  for the wedding serviy ------------
import 'package:dio/dio.dart';

import 'package:wedding/models/wedding_event.dart';
import 'package:wedding/models/wedding_event.dart';
import 'package:wedding/services/client.dart';

import '../models/wedding_event.dart';

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

  Future<WeddingEvent> postWeddingEvent(
      {required WeddingEvent weddingEvent}) async {
    late WeddingEvent new_wedding_event;

    try {
      final Response response = await Client.client.post('api/wedding_event/');
      new_wedding_event = WeddingEvent.fromJson(response.data);
    } on DioError catch (e) {
      print(e);
    }
    return new_wedding_event;
  }
}
