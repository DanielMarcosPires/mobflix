import 'package:flutter/material.dart';

import 'item_category.dart';

class ItemcategoryFilter extends StatelessWidget {
  final String selectedCategory;
  final String image;
  final String categoryName;

  const ItemcategoryFilter(
      {super.key,
      required this.selectedCategory,
      required this.image,
      required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return ItemCategory(category: categoryName, image: image);
  }
}
