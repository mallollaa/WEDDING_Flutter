import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class MyBookingConformPage extends StatelessWidget {
  const MyBookingConformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You book has been recived , Thank you  "),
            ElevatedButton.icon(
                onPressed: () {
                  context.push('/MyHomePage');
                },
                icon: Icon(
                  Icons.home,
                  size: 12,
                ),
                label: Text("Home"))
          ],
        ),
      ),
    );
  }
}
