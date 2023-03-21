import 'package:flutter/material.dart';
import 'package:wedding/widgets/text_styles.dart';
import 'package:wedding/widgets/vendor/booking.dart';

class VenderServiceButtomDetail extends StatelessWidget {
  const VenderServiceButtomDetail({
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
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
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
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
