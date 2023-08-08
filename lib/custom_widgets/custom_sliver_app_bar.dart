import 'package:flutter/material.dart';
import 'package:meudin/assets/colors/my_colors.dart';
import 'package:meudin/custom_widgets/balanco.dart';
import 'package:meudin/custom_widgets/menu_botoes.dart';
import 'package:meudin/custom_widgets/perfil.dart';
import 'package:meudin/custom_widgets/saldo_livre.dart';
import 'package:meudin/models/lancamento.dart';

import '../Controllers/home_controller.dart';

class CustomSliverAppBar extends StatefulWidget {
  const CustomSliverAppBar({
    super.key,
    required this.altura,
    required this.largura,
  });

  final double altura;
  final double largura;

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  HomeController controller = HomeController();

  List get lancamentos => controller.lancamentos;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        double disponivel = 0, ganho = 0, gasto = 0;

        for (Lancamento l in lancamentos) {
          if (l.io == true) {
            ganho += l.preco;
          } else {
            gasto += l.preco;
          }
        }

        disponivel = ganho - gasto;

        return SliverAppBar(
          toolbarHeight: widget.altura * 0.11,
          pinned: true,

          //Cor
          backgroundColor: MyColor.tema,
          expandedHeight: widget.altura * (0.32),

          //Borda
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          )),

          //Parte superior
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Perfil
              const Perfil(nome: "Usuário"),

              //Saldo Livre
              SaldoLivre(saldo: disponivel),
            ],
          ),

          //Parte Expansível
          flexibleSpace: Stack(
            children: [
              //

              //Ganhos
              Positioned(
                top: widget.altura * 0.11,
                left: widget.largura * 0.07,
                child: Balanco(
                  tipo: false,
                  valor: ganho,
                ),
              ),

              //Gastos
              Positioned(
                top: widget.altura * 0.11,
                right: widget.largura * 0.07,
                child: Balanco(
                  tipo: true,
                  valor: gasto,
                ),
              ),

              //Botões
              Positioned(
                top: widget.altura * 0.21,
                left: widget.largura * 0.07,
                child: MenuBotoes(
                  largura: widget.largura,
                  altura: widget.altura,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
