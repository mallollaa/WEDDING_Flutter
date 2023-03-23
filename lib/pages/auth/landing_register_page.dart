import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wedding/providers/auth_provider.dart';
import 'package:wedding/widgets/colors.dart';

class MyRegisterLandingPage extends StatelessWidget {
  MyRegisterLandingPage({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Stack(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 320),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/logo2.png',
                  ),
                  radius: 35,
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 130),
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w800,
                        fontSize: 60,
                        color: MyColors.maincolor),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 40, right: 40),
                  child: Text(
                      'Many people spend more time in planning the wedding than they do in planning the marriage.” Let us help you ;)',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16,
                        color: MyColors.font2,
                      )),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35, top: 170),
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(color: MyColors.font),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "Name",
                              hintStyle: TextStyle(color: MyColors.maincolor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          controller: usernameController,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          style: TextStyle(color: MyColors.font),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: MyColors.maincolor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          style: TextStyle(color: MyColors.font),
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: MyColors.maincolor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          controller: passwordController,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sign Up',
                              style: GoogleFonts.commissioner(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 27,
                                  color: MyColors.font),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: MyColors.litecolor,
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    context.read<AuthProvider>().signup(
                                        username: usernameController.text,
                                        password: passwordController.text);

                                    context.go("/survey");
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                context.push("/signin");
                              },
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18),
                              ),
                              style: ButtonStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
