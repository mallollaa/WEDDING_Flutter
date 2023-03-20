import 'package:flutter/material.dart';

import 'package:wedding/widgets/vendor/background.dart';
import 'package:wedding/widgets/vendor/vender_Buttom_detail.dart';

class MyVendorDetailPage extends StatefulWidget {
  @override
  State<MyVendorDetailPage> createState() => _MyVendorDetailPageState();
}

class _MyVendorDetailPageState extends State<MyVendorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff705B67),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: BackgroundVenderDetail(),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: VenderButtomDetail(),
          ),
        ],
      ),
    );
  }
}
