import 'package:flutter/material.dart';
import 'package:meudin/assets/colors/my_colors.dart';

class IconeMenu extends StatelessWidget {
  const IconeMenu({
    super.key,
    required this.s,
  });
  final String s;

  @override
  Widget build(BuildContext context) {
    Color cor = Colors.white;
    IconData icone = Icons.question_mark;

    switch (s) {
      case "Comida":
        cor = MyColor.comida;
        icone = Icons.fastfood;
        break;
      case "Entreterimento":
        cor = MyColor.entreterimento;
        icone = Icons.sports_esports;
        break;
      case "Salário":
        cor = MyColor.salario;
        icone = Icons.work;
        break;
      default:
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cor,
        ),
        child: Icon(
          icone,
          color: Colors.white,
        ),
      ),
    );
  }
}
