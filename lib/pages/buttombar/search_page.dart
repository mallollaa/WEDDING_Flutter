import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wedding/widgets/searchBar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            centerTitle: false,
            expandedHeight: 100.0,
            stretch: true,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage("assets/images/hands.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // ------- Search Bar -------
          SliverAppBar(
            backgroundColor: Color(0xffDAD6D6),
            elevation: 0,
            pinned: true,
            bottom: const PreferredSize(
                child: SizedBox(), preferredSize: Size.fromHeight(-10.0)),
            flexibleSpace:
                //search Bar
                searchBar(),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffDAD6D6).withOpacity(0.3),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
            );
          }, childCount: 20))
        ],
      ),
    );
  }
}
