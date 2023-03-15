import 'package:flutter/cupertino.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:wedding/models/user.dart';
import 'package:wedding/services/auth_services.dart';

// the midell man between the UI and the backend{services}
class AuthProvider extends ChangeNotifier {
  String token = "";
  User? user; //late thats mean we dont have it now but we will get it soon

  void signup({required String username, required String password}) async {
    token = await AuthServices().Signup(username: username, password: password);
    print("WELCOME YOU'VE BEEN SIGNEDUP:\n $token");

    notifyListeners();
  }

  void signin({required String username, required String password}) async {
    token = await AuthServices().Signin(username: username, password: password);
    user = User.fromJson(Jwt.parseJwt(token));
    print("provider: you are signIn 1 $token");

    notifyListeners();
  }

  // to make sure you are loged in
  bool get isAuth {
    if (token.isNotEmpty && Jwt.getExpiryDate(token)!.isAfter(DateTime.now())) {
      user = User.fromJson(Jwt.parseJwt(
          token)); // to convert the josn into user model , and the jwt. pa.. decode the token
      print(user);
      // notifyListeners();
      return true;
    }
    // notifyListeners();
    return false;
  }

  void signout() {
    token = "";
    this.user = null;
    print(user);
    notifyListeners();
  }
}
