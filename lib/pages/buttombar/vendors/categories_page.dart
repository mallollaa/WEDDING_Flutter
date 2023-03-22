// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/providers/category_provider.dart';
import 'package:wedding/services/category_services.dart';
import 'package:wedding/widgets/category/categories_card.dart';
import 'package:wedding/widgets/category_card.dart';
import 'package:wedding/widgets/colors.dart';

class MyCategoryPage extends StatelessWidget {
  const MyCategoryPage({
    Key? key,
  }) : super(key: key);
  Widget getCategory(BuildContext context) {
    if (context.watch<CategoryProvider>().categories.isEmpty) {
      context.read<CategoryProvider>().getCategories();
    }
    return CircularProgressIndicator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff705B67),
          title: Row(
            children: [
              Text(
                "categories",
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
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 35,
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 20, bottom: 5),
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

                      context.watch<CategoryProvider>().categories.isNotEmpty
                          ? ListView.builder(
                              shrinkWrap: true,
                              itemCount: context
                                  .watch<CategoryProvider>()
                                  .categories
                                  .length,
                              itemBuilder: (context, index) {
                                return CategoryCard(
                                  title: context
                                      .watch<CategoryProvider>()
                                      .categories[index]
                                      .title,
                                  image: context
                                      .watch<CategoryProvider>()
                                      .categories[index]
                                      .image,
                                );
                              },
                            )
                          : getCategory(context)
                    ]),
              ),
            )
          ],
        ))));

    // );
  }
}
