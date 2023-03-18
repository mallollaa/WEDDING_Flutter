import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@override
Widget build(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
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

        image: AssetImage("image"),
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
              'title',
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
