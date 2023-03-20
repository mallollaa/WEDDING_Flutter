import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/pages/buttombar/home.dart';

import 'package:wedding/pages/buttombar/profile.dart';
import 'package:wedding/pages/buttombar/search_page.dart';
import 'package:wedding/pages/buttombar/vendors/vendors.dart';
import 'package:wedding/providers/auth_provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [
    Home(),
    Vendors(), // --- we gotta proplem here
    Search(),
    Profile()
  ];

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
      // ------- ----------- Drewaer --------------------------
      drawer: Drawer(
        child: Consumer<AuthProvider>(
            builder: (context, auth, child) => !auth.isAuth
                ? ListView(
                    children: [
                      ListTile(
                        title: Text("registers"),
                        onTap: () {
                          context.push("/signup");
                        },
                      ),
                      ListTile(
                        title: Text("Login"),
                        onTap: () {
                          context.push("/signin");
                        },
                      )
                    ],
                  )
                : ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      DrawerHeader(
                        child: Text("Welcome ${auth.user!.username}"),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        title: const Text("Logout"),
                        trailing: const Icon(Icons.logout),
                        onTap: () {
                          auth.signout();
                          context.pop();
                        },
                      ),
                    ],
                  )),
      ),
      // ------- AppBar -----------
      appBar: selectIndex == 0
          ? AppBar(
              backgroundColor: Color(0xffDAD6D6),
              title: Text(
                "Defoof",
                style: TextStyle(
                    color: Color(0xfff705B67), fontWeight: FontWeight.bold),
              ),
            )
          : null,
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
    );
  }
}
