import 'package:flutter/material.dart';

import 'button_categories.dart';

class ItemCategory extends StatelessWidget {
  final String category;
  final String image;
  const ItemCategory({super.key, required this.category, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Row(
            children: [
              Text("Categoria: ", style: Theme.of(context).textTheme.titleLarge,),
              ButtonCategories(title: category, onPressed: (){},),
            ],
          ),
          SizedBox(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/$image",
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
