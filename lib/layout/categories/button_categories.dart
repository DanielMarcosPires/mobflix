import 'package:flutter/material.dart';

class ButtonCategories extends StatefulWidget {
  final String title;
  final Function()? onPressed;
  const ButtonCategories({super.key, required this.title, required this.onPressed});

  @override
  State<ButtonCategories> createState() => _ButtonCategoriesState();
}

class _ButtonCategoriesState extends State<ButtonCategories> {
  ButtonStyle? StyleButtonChange(title) {
    switch (title) {
      case "Front End":
       return ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.indigo),
            shape: WidgetStateProperty.all
              (RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            )
        );
        case "Mobile":
          return ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
            shape: WidgetStateProperty.all
              (RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )
            )
        );
        case "Banco de Dados":
          return ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blueGrey),
            shape: WidgetStateProperty.all
              (RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )
            )
        );
      case "Sem Categoria!":
          return ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              shape: WidgetStateProperty.all
                (RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
              )
          );
        default:
          return ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.indigo),
            shape: WidgetStateProperty.all
              (RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )
            )
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: widget.onPressed,
        style: StyleButtonChange(widget.title),
        child: Text(widget.title, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
