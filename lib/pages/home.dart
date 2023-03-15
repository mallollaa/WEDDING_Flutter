import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:wedding/providers/auth_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Defoof"),
      ),
      drawer: Drawer(
          child: //context.watch<AuthProvider>().isAuth
              // ? ListView(
              //     padding: EdgeInsets.zero,
              //     children: [
              //       DrawerHeader(
              //         child: Text(
              //             "Welcome ${context.watch<AuthProvider>().user.username}"),
              //         decoration: const BoxDecoration(
              //           color: Colors.blue,
              //         ),
              //       ),
              //       ListTile(
              //         title: const Text("Logout"),
              //         trailing: const Icon(Icons.logout),
              //         onTap: () {},
              //       ),
              //     ],
              //   )
              ListView(
        children: [
          ListTile(
            title: Text("SignUP NOW !!!"),
            onTap: () {
              context.push("/signup");
            },
          ),
          ListTile(
            title: Text("Sign In Dear :)"),
            onTap: () {
              context.push("/signin");
            },
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/add');
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("explore"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
