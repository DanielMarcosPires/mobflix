import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  List<Widget> children = const <Widget>[];
  Categories({super.key, required this.children});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
      child: SizedBox(
        height: 45,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [Row(
            spacing: 12,
            children: widget.children
          )],
        ),
      ),
    );;
  }
}
