import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/pages/buttombar/home_bttom_page.dart';
import 'package:wedding/pages/buttombar/home.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding/pages/auth/signin_page.dart';
import 'package:wedding/pages/auth/signup.dart';
import 'package:wedding/pages/buttombar/search_page.dart';
import 'package:wedding/pages/buttombar/vendors/categories_page.dart';
import 'package:wedding/pages/buttombar/vendors/services_details_page.dart';
import 'package:wedding/pages/landing_page.dart';
import 'package:wedding/pages/pakege_datail_page.dart';
import 'package:wedding/pages/popular_event_detail.dart';
import 'package:wedding/pages/survey.dart';
import 'package:wedding/providers/auth_provider.dart';
import 'package:wedding/providers/category_provider.dart';
import 'dart:ui';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 3), () {
    FlutterNativeSplash.remove();
  });
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 173, 14, 14)),
        useMaterial3: true,
      ),
    );
  }
}

final _router = GoRouter(
  initialLocation: '/Home',
  routes: [
    GoRoute(
      path: '/MyHomePage',
      builder: (context, state) => MyHomePage(),
    ),
    GoRoute(
      path: '/survey',
      builder: (context, state) => Survey(),
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
      builder: (context, state) => MyCategoryPage(),
    ),
    GoRoute(
      path: '/vendors/detail',
      builder: (context, State) => MyServiceDetailPage(),
    ),
    GoRoute(
      path: '/package/detail',
      builder: (context, State) => PackageDetails(),
    ),
    GoRoute(
      path: '/categories/vendors/detail',
      builder: (context, State) => MyDetailCategoriesPage(),
    ),
  ],
);
