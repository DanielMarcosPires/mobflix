import 'package:flutter/material.dart';
import 'package:mobflix_dart/layout/Categories/ButtonCategories.dart';
import "package:mobflix_dart/layout/Categories/Categories.dart";
import "package:mobflix_dart/layout/Categories/ListCategory.dart";

import 'Categories/ItemCategory.dart';

class layout extends StatefulWidget {
  const layout({super.key});

  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {
  String _selectedCategory = "Front End"; // Variável de estado

  String selectCategory(title) {
    setState(() {
      _selectedCategory = title; // Atualiza a variável de estado
    });
    return _selectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
        title: Text("Mobflix"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox.fromSize(
              child: Image.asset(
                "assets/images/Banner.png",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            Categories(children: [
              ButtonCategories(
                title: "Front End",
                onPressed: () => selectCategory("Front End"),
              ),
              ButtonCategories(
                title: "Mobile",
                onPressed: () => selectCategory("Mobile"),
              ),
              ButtonCategories(
                title: "Banco de Dados",
                onPressed: () => selectCategory("Banco de Dados"),
              ),
              ButtonCategories(
                  title: "Back End",
                  onPressed: () => selectCategory("Back End"))
            ]),
            Divider(
              color: Colors.blue,
            ),
            ListCategory(
              children: [
                ItemCategory(
                  title: 'Mobile',
                  image: "ThumbVideo1.png",
                ),
                ItemCategory(title: "Front End", image: "ThumbVideo2.png"),
                ItemCategory(title: "Mobile", image: "ThumbVideo1.png")
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          child: Icon(
            Icons.add,
            size: 30,
          )),
    );
  }
}
