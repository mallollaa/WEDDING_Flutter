// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wedding/models/categories.dart';
import 'package:wedding/widgets/categories_card.dart';
import 'package:wedding/widgets/colors.dart';

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

class Vendors extends StatelessWidget {
  final Categories categories;
  const Vendors({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDAD6D6),
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Color(0xffDAD6D6),
            elevation: 0,
            pinned: true,
            centerTitle: false,
            expandedHeight: 100.0,
            stretch: true,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage("assets/images/Venues.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          // why ?
                          decoration: BoxDecoration(
                            color: Color(0xffDAD6D6),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 25,
                                  ),

                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, bottom: 5),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Categories title",
                                          style: GoogleFonts.commissioner(
                                            fontSize: 24,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // -------- Fix this ------
                                  InkWell(
                                    onTap: () {
                                      GoRouter.of(context)
                                          .push('/vendors/detail');
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: CategoriesCard(
                                              categories: Categories(
                                                title: "test",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 3,
            ),
          )
        ]));
  }
}
