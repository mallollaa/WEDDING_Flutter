import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:wedding/models/vendor.dart';
import 'package:wedding/widgets/categories_card.dart';
import 'package:wedding/widgets/vendors_card.dart';
import '../providers/category_provider.dart';

class VendorCard extends StatelessWidget {
  VendorCard({
    Key? key,
    required this.title,
    required this.price,
    required this.vendors,
    required this.description,
  }) : super(key: key);

  final String title;
  final double price;
  final int vendors;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/vendors/service/detail');
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: VendorsCard(
                title: title,
                price: price,
                vendors: vendors,
                description: description,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
