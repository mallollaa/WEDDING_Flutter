import 'package:flutter/material.dart';

class BackgroundVenderDetail extends StatelessWidget {
  const BackgroundVenderDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/wedding cake.jpg",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          // Column(
          //   children: <Widget>[
          //     Expanded(
          //       child: Align(
          //         alignment: Alignment(0, -0.6),
          //         child: Text(
          //           "CupCake store",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 44,
          //               fontWeight: FontWeight.bold),
          //           textAlign: TextAlign.center,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
