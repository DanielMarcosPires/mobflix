import 'package:flutter/material.dart';

import 'button_categories.dart';

class ItemCategory extends StatelessWidget {
  final String category;
  final String image;

  const ItemCategory({super.key, required this.category, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Row(
            children: [
              ButtonCategories(
                title: category,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
              child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/${image.isEmpty ? "SemFoto" : image}.png",
                  width: double.maxFinite,
                  fit: BoxFit.contain,
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
