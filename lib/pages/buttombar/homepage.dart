import 'package:flutter/material.dart';

import 'package:wedding/pages/buttombar/profile.dart';
import 'package:wedding/pages/buttombar/search.dart';
import 'package:wedding/pages/buttombar/vendors.dart';

import 'home.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [Home(), Search(), Vendors(), Profile()];

  int selectIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void OnItemTap(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------- Buttom Bar ---------
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: OnItemTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectIndex == 0 ? Color(0xff705B67) : Colors.grey,
              ),
              label: "Home",
              backgroundColor: Color(0xff705B67)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.store,
                color: selectIndex == 1 ? Color(0xff705B67) : Colors.grey,
              ),
              label: "Vendors",
              backgroundColor: Color(0xff705B67)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: selectIndex == 2 ? Color(0xff705B67) : Colors.grey,
              ),
              label: "search",
              backgroundColor: Color(0xff705B67)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: selectIndex == 3 ? Color(0xff705B67) : Colors.grey,
              ),
              label: "Profile",
              backgroundColor: Color(0xff705B67)),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff705B67),
        title: Text(
          "Defoof",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
