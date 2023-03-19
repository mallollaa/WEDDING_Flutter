import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/pages/buttombar/home_bttom_page.dart';
import 'package:wedding/pages/buttombar/home.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding/pages/auth/signin_page.dart';
import 'package:wedding/pages/auth/signup.dart';
import 'package:wedding/pages/buttombar/vendors/vendors.dart';
import 'package:wedding/pages/buttombar/vendors/vendors_details_page.dart';
import 'package:wedding/pages/landing_page.dart';
import 'package:wedding/providers/auth_provider.dart';
import 'package:wedding/providers/category_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Zafaf',
      theme: ThemeData(
        // brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
    );
  }
}

final _router = GoRouter(
  initialLocation: '/MyHomePage',
  routes: [
    GoRoute(
      path: '/MyHomePage',
      builder: (context, state) => MyHomePage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignupPage(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => SigninPage(),
    ),
    GoRoute(
      path: '/Home',
      builder: (context, State) => LandingPage(),
    ),
    GoRoute(
      path: '/vendors',
      builder: (context, state) => Vendors(),
    ),
    GoRoute(
      path: '/vendors/detail',
      builder: (context, State) => MyVendorDetailPage(),
    ),
  ],
);
