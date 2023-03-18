import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/widgets/categories_card.dart';

//-------- this timprory REMOVE AFTER CREATING THE MODEL----------
const categoryData = [
  {
    'title': 'photographer',
    'imgUrl': 'assets/images/photographer.jpg',
  },
  {
    'title': 'Venues',
    'imgUrl': 'assets/images/Venues.jpg',
  },
  {
    'title': 'Makeup',
    'imgUrl': 'assets/images/Makeup.jpg',
  },
  {
    'title': 'Wedding Cake',
    'imgUrl': 'assets/images/wedding cake.jpg',
  },
  {
    'title': 'Music & Dj',
    'imgUrl': 'assets/images/music.jpg',
  },
];

class Vendors extends StatefulWidget {
  Vendors({super.key});

  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff705B67),
        title: Row(
          children: [
            Text(
              "Vendors",
              style:
                  GoogleFonts.commissioner(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xfff705B67),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios, // change the place of the arrow
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: MediaQuery.of(context).size.height, // why ?
              width: MediaQuery.of(context).size.width, // why ?
              decoration: BoxDecoration(
                color: Color(0xffDAD6D6),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Categories title",
                        style: GoogleFonts.commissioner(
                            fontSize: 24, color: Colors.grey.shade700),
                      ),
                      // Categories(
                      //   title: "categories",
                      //   imageUrl: 'assets/images/photographer.jpg',
                      // ),
                    ]),
              ),
            )
          ],
        )),
      ),
    );
  }
}
