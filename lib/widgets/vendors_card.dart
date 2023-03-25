import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding/models/vendor.dart';

class VendorsCard extends StatefulWidget {
  VendorsCard({
    required this.title,
    required this.price,
    required this.vendors,
    required this.description,
  });

  String title;
  double price;
  int vendors;
  String description;

  @override
  State<VendorsCard> createState() => _VendorsCardState();
}

class _VendorsCardState extends State<VendorsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black38.withOpacity(0.68),
            BlendMode.multiply,
          ),

          /// --------- ImageUrl is here ---------

          image: NetworkImage(
              'https://mercatornet.com/wp-content/uploads/2018/02/FB_cutting_ceremony.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              ///// --------- Title is here --------
              child: Text(
                widget.title,
                style: GoogleFonts.commissioner(
                    fontSize: 25,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
