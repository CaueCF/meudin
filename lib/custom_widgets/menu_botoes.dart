import 'package:flutter/material.dart';
import 'package:meudin/Controllers/home_controller.dart';
import 'package:meudin/custom_widgets/botao.dart';
import 'package:meudin/pages/add_page.dart';

import '../assets/colors/my_colors.dart';

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
            titulo: "",
            icone: Icons.wysiwyg,
            function: () {},
            largura: largura,
            altura: altura,
          ),

          //
          Botao(
            titulo: "",
            icone: Icons.wysiwyg,
            function: () {},
            largura: largura,
            altura: altura,
          ),

          //
          Botao(
            titulo: "Apagar todos",
            icone: Icons.dangerous_outlined,
            function: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AlertaApagar();
                  });
            },
            largura: largura,
            altura: altura,
          ),
        ],
      ),
    );
  }
}

class AlertaApagar extends StatelessWidget {
  const AlertaApagar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController home = HomeController();

    const TextStyle estilo = TextStyle(color: MyColor.caribeancurrent);

    return AlertDialog(
      title: const Center(
        child: Text(
          "Atenção",
          style: TextStyle(
            color: MyColor.berkeleyblueAccent,
          ),
        ),
      ),
      content: const Text("Tem certeza que deseja excluir todos os lançamentos?"),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: <Widget>[
        ElevatedButton(
          child: const Text(
            "CANCELAR",
            style: estilo,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          onPressed: () {
            home.apagarTodosItens();
            Navigator.of(context).pop();
          },
          child: const Text(
            "APAGAR",
            style: estilo,
          ),
        ),
      ],
    );
  }
}
