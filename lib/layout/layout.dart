import 'package:flutter/material.dart';
import 'package:mobflix_dart/layout/Categories/ButtonCategories.dart';
import "package:mobflix_dart/layout/Categories/Categories.dart";

class layout extends StatefulWidget {
  const layout({super.key});

  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {
  String _selectedCategory = "Front End"; // Variável de estado

  String CategorieSelected(title) {
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
      body: Column(
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
              onPressed: () => CategorieSelected("Front End"),
            ),
            ButtonCategories(
              title: "Back End",
              onPressed: () => CategorieSelected("Back End"),
            ),
            ButtonCategories(
              title: "Banco de Dados",
              onPressed: () => CategorieSelected("Banco de Dados"),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Categoria: $_selectedCategory", style: Theme.of(context).textTheme.headlineSmall,),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}