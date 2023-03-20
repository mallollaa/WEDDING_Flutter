import 'package:flutter/material.dart';
import 'package:wedding/widgets/text_styles.dart';
import 'package:wedding/widgets/vendor/booking.dart';

class VenderButtomDetail extends StatelessWidget {
  const VenderButtomDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        color: Color(0xffDAD6D6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 22, bottom: 12),
            child: Text(
              "Wedding Cake Store :",
              style: TextStyles.buttonTextStyle,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            // ----------- Item Image -------------------
                            child: Image.asset(
                              "assets/images/cake.jpg",
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.8,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              // ------------ Item Title is here --------------
                              Text(
                                "Blubary Cake",
                                style: TextStyles.titleTextStyle,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add_box_outlined)),
                            ],
                          ),
                        ),
                        // --------------- Price is here -----------
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            "price: 22 KD",
                            style: TextStyles.tagLineTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            // ----------- Item Image -------------------
                            child: Image.asset(
                              "assets/images/cake.jpg",
                              width: MediaQuery.of(context).size.width * 0.5,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              // ------------ Item Title --------------
                              Text(
                                " White Cake",
                                style: TextStyles.titleTextStyle,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add_box_outlined))
                            ],
                          ),
                        ),
                        // --------------- Price is here -----------
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 6),
                          child: Text(
                            "price: 22 KD",
                            style: TextStyles.tagLineTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),

            // ----------------- Booking Button ---------------
            child: BookingRow(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(),
                    SizedBox(
                      height: 4,
                    ),
                    // Text(
                    //   "Strings.bear",
                    //   style: TextStyles.body2TextStyle,
                    // ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                        // padding: const EdgeInsets.all(12),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(8),
                        //   color: Color(0xFF8C5835),
                        // ),
                        // child: Image.asset(
                        //   "assets/images/cake.jpg",
                        //   height: 50,
                        //   width: 50,
                        // ),
                        ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
