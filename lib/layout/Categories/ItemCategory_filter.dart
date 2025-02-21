import 'package:flutter/material.dart';

import 'ItemCategory.dart';

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
    return (categoryName == selectedCategory)
        ? ItemCategory(category: categoryName, image: image)
        : SizedBox(height: 0, width: 0,);
  }
}
