import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meudin/Controllers/home_controller.dart';
import 'package:meudin/assets/colors/my_colors.dart';
import 'package:meudin/models/lancamento.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    super.key,
    required this.altura,
    required this.largura,
    required this.icone,
    required this.cor,
    required this.custo,
    required this.l,
  });

  final double altura, largura;
  final IconData icone;
  final Color cor, custo;
  final Lancamento l;

/*

ARRUMAR O CONTROLLER NA PÁGINA

*/
  @override
  Widget build(BuildContext context) {
    HomeController home = HomeController();

    //
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.backgroung,
        appBar: AppBar(
          backgroundColor: MyColor.caribeancurrent.shade800,
          iconTheme: const IconThemeData(color: Colors.white, size: 30),
          actions: [
            //
            //Ícone para deletar
            IconButton(
              onPressed: () {
                //Dialog para confirmar se deseja excluir o lançamento
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertaApagar(home: home, l: l);
                    });
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),

        //
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
          child: Center(
            child: Container(
              height: altura * 0.50,
              width: largura,
              decoration: BoxDecoration(
                color: const Color(0xFFDADADA),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      //Ícone
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: altura * 0.2,
                          width: largura * 0.4,
                          decoration: BoxDecoration(
                            color: cor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25),
                            ),
                          ),
                          child: Icon(
                            icone,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      //Valor e Títlo
                      Flexible(
                        flex: 2,
                        child: InfoValorTitulo(l: l, custo: custo),
                      ),
                    ],
                  ),

                  //Descrição
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 21,
                      horizontal: 17,
                    ),
                    child: Container(
                      height: altura * 0.24,
                      width: largura,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 11,
                          vertical: 17,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Descrição:",
                              style: TextStyle(color: Color(0xFF424040)),
                            ),
                            Text(
                              l.infos,
                              //textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoValorTitulo extends StatelessWidget {
  const InfoValorTitulo({
    super.key,
    required this.l,
    required this.custo,
  });

  final Lancamento l;
  final Color custo;

  @override
  Widget build(BuildContext context) {
    List<String> d = l.data.split(" ");

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            //Titulo
            Text(
              l.titulo,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            //Data
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.calendar_today, size: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 2,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        d.elementAt(0),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        d.elementAt(1),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Preço
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: custo,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "${l.io ? "" : "-"}${NumberFormat.simpleCurrency(
                  decimalDigits: 2,
                ).format(l.preco)}",
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlertaApagar extends StatelessWidget {
  const AlertaApagar({
    super.key,
    required this.home,
    required this.l,
  });

  final HomeController home;
  final Lancamento l;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Atenção"),
      content: const Text("Tem certeza que deseja excluir esse lançamento?"),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: <Widget>[
        ElevatedButton(
          child: const Text("CANCELAR"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          onPressed: () {
            home.apagaItem(l);
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
          child: const Text("APAGAR"),
        ),
      ],
    );
  }
}
