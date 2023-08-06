import 'package:flutter/material.dart';
import 'package:meudin/assets/colors/my_colors.dart';

class Botao extends StatelessWidget {
  const Botao({
    super.key,
    required this.icone,
    required this.function,
    required this.titulo,
    required this.largura,
    required this.altura,
  });

  final double largura;
  final double altura;
  final IconData icone;
  final VoidCallback function;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    Color padrao = Colors.white70;

    return SizedBox(
      width: largura * 0.21,
      child: Column(
        children: [
          SizedBox(
            width: largura * 0.13,

            //Botão
            child: ElevatedButton(
              onPressed: function,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: MyColor.neonblue.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Icon(icone, color: padrao),
            ),
          ),

          //Texto
          Text(
            titulo,
            style: TextStyle(fontSize: 12, color: padrao),
            softWrap: true,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
