import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
   List<Widget> children = const <Widget>[];
   ListCategory({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: children
    );
  }
}
