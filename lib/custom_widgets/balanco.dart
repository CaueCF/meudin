import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meudin/assets/colors/my_colors.dart';

class Balanco extends StatelessWidget {
  const Balanco({
    super.key,
    required this.tipo,
    required this.valor,
  });

  final bool tipo;
  final double valor;

  @override
  Widget build(BuildContext context) {
    TextStyle estilo;
    String val;
    Icon tipoIcon;
    Color background;

    if (tipo) {
      background = MyColor.gasto;
      val = "Gasto";
      tipoIcon = Icon(Icons.keyboard_arrow_down, color: background);
    } else {
      background = MyColor.ganho;
      val = "Ganho";
      tipoIcon = Icon(Icons.keyboard_arrow_up, color: background);
    }

    estilo = const TextStyle(color: Colors.black, fontSize: 20);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 70,
          ),

          //Indicador
          child: Text(
            val,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),

        //Valor
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: background,
            // border: Border.all(
            //   color: Colors.white,
            //   width: 2,
            // ),
          ),
          height: 35,
          width: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              tipoIcon,
              Expanded(
                child: Text(
                  NumberFormat.simpleCurrency(decimalDigits: 2).format(valor),
                  style: estilo,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
