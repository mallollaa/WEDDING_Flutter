// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Survey());
// }

// class Survey extends StatelessWidget {
//   const Survey({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'Flutter Clickable Text Example',
//           ),
//         ),
//         body: Center(
//             child: RichText(
//           text: TextSpan(
//             text: 'Here is the ',
//             style: const TextStyle(fontSize: 30, color: Colors.black),
//             children: <TextSpan>[
//               TextSpan(
//                   text: 'clickable ',
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () {
//                       debugPrint('The button is clicked!');
//                     },
//                   style: const TextStyle(
//                     color: Colors.blue,
//                   )),
//               const TextSpan(text: 'text!'),
//             ],
//           ),
//         )));
//   }
// }
