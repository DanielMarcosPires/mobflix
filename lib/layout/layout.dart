import 'package:flutter/material.dart';
import 'package:mobflix_dart/layout/Categories/button_categories.dart';
import "package:mobflix_dart/layout/Categories/categories.dart";
import 'package:mobflix_dart/layout/Categories/item_category_filter.dart';
import "package:mobflix_dart/layout/Categories/list_category.dart";

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  String _selectedCategory = "Front End"; // Variável de estado

  String selectCategory(title) {
    setState(() {
      _selectedCategory = title; // Atualiza a variável de estado
    });
    return _selectedCategory;
  }

  List<Widget> get itemsCategory => [
        ItemcategoryFilter(
            selectedCategory: _selectedCategory,
            image: "ThumbVideo1.png",
            categoryName: "Mobile"),
        ItemcategoryFilter(
            selectedCategory: _selectedCategory,
            image: "ThumbVideo2.png",
            categoryName: "Front End"),
        ItemcategoryFilter(
            selectedCategory: _selectedCategory,
            image: "ThumbVideo1.png",
            categoryName: "Banco de Dados"),
        ItemcategoryFilter(
            selectedCategory: _selectedCategory,
            image: "ThumbVideo1.png",
            categoryName: "Front End"),
      ];

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
            Divider(),
            Categories(
              children: itemsCategory
                  .map((element) => (element as ItemcategoryFilter)
                      .categoryName) // Extrai os nomes
                  .toSet() // Remove duplicatas
                  .map((category) => ButtonCategories(
                        title: category,
                        onPressed: () => selectCategory(category),
                      ))
                  .toList(),
            ),
            Divider(),
            ListCategory(
              children: itemsCategory,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: Icon(
            Icons.add,
            size: 40,
          )),
    );
  }
}
