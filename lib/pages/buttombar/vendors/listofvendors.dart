import 'package:flutter/material.dart';

import 'package:wedding/widgets/vendor/background.dart';
import 'package:wedding/widgets/vendor/service_Buttom_detail.dart';
// import 'package:wedding/widgets/vendor/vender_Buttom_detail.dart';

class ListOfVendor extends StatefulWidget {
  @override
  State<ListOfVendor> createState() => ListOfVendorstate();
}

class ListOfVendorstate extends State<ListOfVendor> {
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
            // heightFactor: 0.65,
            child: VenderServiceButtomDetail(),
          ),
        ],
      ),
    );
  }
}
