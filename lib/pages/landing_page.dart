import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Welcome to our family."),
            ),
            body: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Image.asset(
                      "assets/images/logo2.png",
                      width: 80,
                      height: 80,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    " Defouf",
                    style: TextStyle(
                      color: Color.fromARGB(255, 48, 4, 56),
                      fontSize: 27,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Falling in love is the easy part; planning a wedding is the hardest!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 197, 140, 207),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Let us make it easier for you with Defouf",
                    style: TextStyle(
                      color: Color.fromARGB(255, 197, 140, 207),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context.push("/signup");
                      },
                      child: Text("Sign up")),
                  ElevatedButton(
                    onPressed: () {
                      context.push("/signin");
                    },
                    child: Text("Sign in"),
                  )
                ],
              ),
            )));
  }
}
