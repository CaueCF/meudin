import 'package:flutter/material.dart';
import 'package:meudin/custom_widgets/botao.dart';
import 'package:meudin/pages/add_page.dart';

class MenuBotoes extends StatelessWidget {
  const MenuBotoes({
    super.key,
    required this.largura,
    required this.altura,
  });

  final double largura;
  final double altura;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: largura * 0.86,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Botao(
            titulo: "Novo lançamento",
            icone: Icons.add,
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddLancamento(
                      altura: altura,
                      largura: largura,
                    ),
                  ));
            },
            largura: largura,
            altura: altura,
          ),

          //
          Botao(
            titulo: "-",
            icone: Icons.wysiwyg,
            function: () {},
            largura: largura,
            altura: altura,
          ),

          //
          Botao(
            titulo: "-",
            icone: Icons.wysiwyg,
            function: () {},
            largura: largura,
            altura: altura,
          ),

          //
          Botao(
            titulo: "-",
            icone: Icons.wysiwyg,
            function: () {},
            largura: largura,
            altura: altura,
          ),
        ],
      ),
    );
  }
}
