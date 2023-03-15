import 'package:dio/dio.dart';

class Client {
  // ignore: prefer_final_fields
  static Dio client = Dio(
      // we use it to figer the dio instance and set the baseurl inside it
      BaseOptions(baseUrl: "http://127.0.0.1:8000/"));
  Client._(); // to make clinet privet
}
