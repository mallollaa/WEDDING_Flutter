import 'package:dio/dio.dart';
import 'package:wedding/models/user.dart';
import 'package:wedding/services/client.dart';

class AuthServices {
  final client = Client.client;
  Future<String> Signup(
      {required String username, required String password}) async {
    String token = "";

    try {
      final response = await client.post(
        "api/register/",
        data: {"username": username, "password": password},
      ); // this end boin form the backend not from the router
      // this will take the info from the UI and save it inside the class model then trun it into jason
      // then it will send it to the backend
      token = response.data["access_token"];
      // accses is the name of our token in the backend
    } on DioError catch (error) {
      print(error);
    }
// we are acsseing the token inside the josion data in the backend
    return token;
  }

  Future<String> Signin(
      {required String username, required String password}) async {
    // print("services ${user.username} ,${user.password}");

    String token = "";
    try {
      final response = await client.post("api/login/",
          data: {"username": username, "password": password});
      token = response.data["access_token"];
      // we are acsseing the token inside the josion data in the backend

    } on DioError catch (error) {
      print(error);
    }
    return token;
  }
}
