import 'package:flutter/material.dart';
//import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:meudin/assets/colors/my_colors.dart';
import 'package:meudin/pages/info_page.dart';

import '../models/lancamento.dart';

class CardLancamento extends StatelessWidget {
  const CardLancamento({
    super.key,
    required this.altura,
    required this.largura,
    required this.l,
  });

  final double altura, largura;
  final Lancamento l;

  @override
  Widget build(BuildContext context) {
    Color cor = Colors.white;
    IconData icone = Icons.question_mark;
    double posx = 0, posy = 0, tamanho = 0;
    List<String> d = l.data.split(" ");

    switch (l.tipo) {
      case "Comida":
        cor = MyColor.comida;
        icone = Icons.fastfood;
        posx = 16;
        posy = 20;
        tamanho = altura * 0.068;
        break;
      case "Entreterimento":
        cor = MyColor.entreterimento;
        icone = Icons.sports_esports;
        posx = 8;
        posy = 18;
        tamanho = altura * 0.088;
        break;
      case "Salário":
        cor = MyColor.salario;
        icone = Icons.work;
        posx = 12;
        posy = 18;
        tamanho = altura * 0.08;
        break;
      default:
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoPage(
                altura: altura,
                largura: largura,
                cor: cor,
                icone: icone,
                custo: l.io ? MyColor.ganho : MyColor.gasto,
                l: l,
              ),
            ),
          );
        },
        child: Container(

            //
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: cor,
            ),

            //
            height: altura * 0.13,
            //width: largura * 0.85,
            clipBehavior: Clip.antiAlias,

            //
            child: Stack(
              children: [
                Positioned(
                  top: posy,
                  left: posx,
                  child: Icon(
                    icone,
                    color: Colors.white,
                    size: tamanho,
                  ),
                ),

                //
                Positioned(
                  left: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: altura * 0.13,
                    width: largura * 0.64,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              l.titulo.replaceAll(' ', ''),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CardPrecos(l: l)
                          ],
                        ),

                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.calendar_today),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(d.elementAt(0)),
                                  Text(d.elementAt(1)),
                                ],
                              ),
                            )
                          ],
                        ),

                        //
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),

                //
              ],
            )),
      ),
    );
  }
}

class CardPrecos extends StatelessWidget {
  const CardPrecos({
    super.key,
    required this.l,
  });

  final Lancamento l;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: l.io ? MyColor.ganho : MyColor.gasto,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            l.io ? "" : "- ",
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            """
        ${NumberFormat.simpleCurrency(decimalDigits: 2).format(l.preco)}
        """
                .trim(),
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
