import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:wedding/providers/auth_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Color(0xffDAD6D6)),
              child: SingleChildScrollView(
                child: Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/logo2.png",
                            height: 28,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "DEF",
                                style: TextStyle(
                                    color: Color(0xff102733),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "OFE",
                                style: TextStyle(
                                    color: Color(0xfff705B67),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xff102733),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hello, Welcom Back",
                              style: TextStyle(
                                  color: Color(0xff102733),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 21),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              //fix this
                              "Time Left Until Your Wedding Day : 22 days",
                              style: TextStyle(
                                  color: Color(0xff102733), fontSize: 15),
                            )
                          ],
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Packeges",
                style: TextStyle(color: Color(0xff102733), fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () => GoRouter.of(context).push('/package/detail'),
              child: Container(
                height: 100,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return EventTile();
                    }),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Popular Events",
                style: TextStyle(color: Color(0xff102733), fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).push('/categories/vendors/detail');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    Container(
                      child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return PopularEventTile();
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EventTile extends StatelessWidget {
  // String imgAssetPath;
  // String eventType;
  // EventTile({this.imgAssetPath, this.eventType});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 35,
      ),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Color(0xff29404E), borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.card_giftcard_outlined,
            color: Colors.white,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "eventType",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class PopularEventTile extends StatelessWidget {
  // String desc;
  // String date;
  // String address;
  // String imgeAssetPath;

  /// later can be changed with imgUrl
  // PopularEventTile({this.address, this.date, this.imgeAssetPath, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: Color(0xff29404E), borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Categories here",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/music.jpg",
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "date",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/music.jpg",
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "address",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              child: Image.asset(
                'assets/images/music.jpg',
                height: 100,
                width: 120,
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
