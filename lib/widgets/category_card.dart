import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:wedding/widgets/categories_card.dart';

import '../providers/category_provider.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({required this.title, required this.image, super.key});

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/vendors/detail');
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CategoriesCard(
                title: title,
                image: image,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
