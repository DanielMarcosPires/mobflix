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
    double x = 8;
    double y = 2;
    return SizedBox(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(x, y, x, y),
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: widget.children
        )
        ],
      ),
    );
  }
}
