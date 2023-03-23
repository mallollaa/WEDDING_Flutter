import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding/widgets/colors.dart';
import 'package:wedding/widgets/text_styles.dart';

class VenderServiceButtomDetail extends StatefulWidget {
  const VenderServiceButtomDetail({
    super.key,
  });

  // ------- this for Dimmy Data remove later --------

  @override
  State<VenderServiceButtomDetail> createState() =>
      _VenderServiceButtomDetailState();
}

List<String> imageList = [
  "assets/images/cake.jpg",
  "assets/images/cake1.jpg",
  "assets/images/cake2.jpg",
  "assets/images/cake3.jpg",
  "assets/images/cake4.jpg",
  "assets/images/cake5.jpg",
];
List<String> price = [
  "300 Kd",
  "240 Kd",
  "150 Kd",
];
List<String> title = [
  "cherry blossom Cake",
  "White Night Cake",
  "Bride Flower Cake",
];

class _VenderServiceButtomDetailState extends State<VenderServiceButtomDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAD6D6),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xffDAD6D6),
            elevation: 0,
            pinned: true,
            centerTitle: true,
            expandedHeight: 300.0,
            stretch: true,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage("assets/images/wedding cake.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            title: Row(
              children: [
                Text(
                  "Vender name",
                  style: TextStyles.titleTextStyle,
                ),
              ],
            ),
          ),
          // ------- Search Bar -------

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12),
                        child: Row(
                          children: [
                            Text(
                              "Best Chosices ",
                              style: GoogleFonts.commissioner(
                                  fontSize: 24, color: MyColors.font2),
                              textAlign: TextAlign.left,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 12,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Container(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: title.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: <Widget>[
                                  Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                              child: ClipRRect(
                                                // ----------- Item Image -------------------
                                                child: Image.asset(
                                                  imageList[index],
                                                  fit: BoxFit.cover,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.8,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    // ------------ Item Title is here --------------

                                                    Container(
                                                      child: SizedBox(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(2.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                title[index],
                                                                style: TextStyles
                                                                    .tagLineTextStyle,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    price[
                                                                        index],
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: TextStyles
                                                                        .tagLineTextStyle,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 43,
                                                                  ),
                                                                  ElevatedButton
                                                                      .icon(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .add_box_sharp,
                                                                      color: Color(
                                                                          0xff102733),
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    label: Text(
                                                                      'Book',
                                                                      style: GoogleFonts.aBeeZee(
                                                                          color: Color(
                                                                              0xff3F3244),
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      context.go(
                                                                          '/servics/booking');
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ])),
                                  SizedBox(
                                    width: 12,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Our Latest Work",
                              style: GoogleFonts.commissioner(
                                  fontSize: 24, color: MyColors.font2),
                              textAlign: TextAlign.start,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 12,
                            ),
                          ],
                        ),
                      ),

                      // ---------------------------- Grid ---------------
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          Container(
            child: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.cover),
                    ),
                  );
                },
                childCount: imageList.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 60,
                        alignment: Alignment.center,
                        child: Text(
                          "Visit us ", // do this
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}

//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(40),
//         ),
//         color: Color(0xffDAD6D6),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(left: 25, top: 22, bottom: 12),
//             child: Text(
//               "Wedding Cake Store :",
//               style: TextStyles.buttonTextStyle,
//             ),
//           ),

//           Expanded(
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   return Row(
//                     children: <Widget>[
//                       Container(
//                         margin: const EdgeInsets.only(left: 25),
//                         width: MediaQuery.of(context).size.width * 0.5,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Expanded(
//                               child: ClipRRect(
//                                 // ----------- Item Image -------------------
//                                 child: Image.asset(
//                                   "assets/images/cake.jpg",
//                                   fit: BoxFit.cover,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.8,
//                                 ),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 6),
//                               child: Row(
//                                 children: [
//                                   // ------------ Item Title is here --------------
//                                   Text(
//                                     "Blubary Cake",
//                                     style: TextStyles.titleTextStyle,
//                                   ),
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.add_box_outlined)),
//                                 ],
//                               ),
//                             ),
//                             // --------------- Price is here -----------
//                             Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 6),
//                               child: Text(
//                                 "price: 22 KD",
//                                 style: TextStyles.tagLineTextStyle,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Container(
//   child:
//   GridView.builder(
//     itemCount: imageList.length,
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 3,
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//     ),
//     itemBuilder: ((context, index) {
//       return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           image: DecorationImage(
//               image: AssetImage(imageList[index]), fit: BoxFit.cover),
//         ),
//       );
//     }),
//   ),
// ),
