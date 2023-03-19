import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyVendorDetailPage extends StatelessWidget {
  const MyVendorDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: detailCard(),
    );
  }
}

class detailCard extends StatelessWidget {
  const detailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("the detail herreee"));
  }
}
