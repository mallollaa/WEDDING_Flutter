import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:provider/provider.dart';
import 'package:wedding/providers/auth_provider.dart';
import 'package:wedding/widgets/colors.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  List<Icon> icons = [
    Icon(Icons.person, color: MyColors.maincolor),
    Icon(Icons.settings, color: MyColors.maincolor),
    Icon(Icons.note_add, color: MyColors.maincolor),
    Icon(Icons.favorite, color: MyColors.maincolor),
    Icon(Icons.chat, color: MyColors.maincolor),
    Icon(Icons.login, color: MyColors.maincolor),
  ];

  List titls = [
    'Perconal data',
    'Settings',
    'E-Statement',
    'Refferal Code',
    'FAQs',
    'Logout'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: SafeArea(
          child: context.watch<AuthProvider>().isAuth
              ? Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: MyColors.maincolor, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/profilePic.jpeg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      // ------ when we logout there's an error ----
                      " ${context.watch<AuthProvider>().user!.username}",
                      style: TextStyle(
                          fontSize: 18, color: MyColors.font, fontFamily: 'ro'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 40,
                        thickness: 2,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Container(
                            width: 37,
                            height: 37,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: icons[index],
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              titls[index],
                              style:
                                  TextStyle(fontSize: 17, color: MyColors.font),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                          ),
                        );
                      },
                    ),
                  ],
                )
              : Center(
                  child: Column(
                  children: [
                    Text("register Now "),
                    IconButton(
                        onPressed: () {
                          context.push('/signup');
                        },
                        icon: Icon(Icons.login))
                  ],
                ))),
    );
  }
}
// ListTile(
//                         title: const Text("Logout"),
//                         trailing: const Icon(Icons.logout),
//                         onTap: () {
//                           auth.signout();
//                           context.pop();
//                         },