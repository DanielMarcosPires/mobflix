import 'package:flutter/material.dart';

import 'ButtonCategories.dart';

class ItemCategory extends StatelessWidget {
  final String title;
  final String image;
  const ItemCategory({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Row(
            children: [
              Text("Categoria: ", style: Theme.of(context).textTheme.titleLarge,),
              ButtonCategories(title: title, onPressed: () {}),
            ],
          ),
          SizedBox(
              width: 400,
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
