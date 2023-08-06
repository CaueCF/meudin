import 'package:flutter/material.dart';
import 'package:meudin/Controllers/home_controller.dart';
import 'package:meudin/assets/colors/my_colors.dart';

import 'package:meudin/custom_widgets/card_lancamento.dart';
import 'package:meudin/custom_widgets/custom_sliver_app_bar.dart';

import '../models/lancamento.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeController controller = HomeController();

  List get lancamentos => controller.lancamentos;

  @override
  void initState() {
    if (controller.checaDados()) {
      controller.gerarDados();
    } else {
      controller.getDados();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.caribeancurrent.shade50,
        body: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppBar(altura: altura, largura: largura),

            //

            AnimatedBuilder(
              animation: controller,
              builder: (context, _) {
                return SliverList(
                  key: UniqueKey(),
                  delegate: SliverChildBuilderDelegate(
                    childCount: lancamentos.length,
                    (BuildContext context, index) {
                      Lancamento l = lancamentos[index];

                      return CardLancamento(
                        altura: altura,
                        largura: largura,
                        l: l,
                      );
                    },
                  ),
                );
              },
            )

            //
          ],
        ),
      ),
    );
  }
}
