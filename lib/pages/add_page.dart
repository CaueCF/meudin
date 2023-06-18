import 'package:flutter/material.dart';

import '../assets/colors/my_colors.dart';
import '../custom_widgets/form.dart';

class AddLancamento extends StatelessWidget {
  const AddLancamento({super.key, required this.altura, required this.largura});

  final double altura, largura;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.azul.shade100,
        appBar: AppBar(
          backgroundColor: MyColor.azul.shade800,
          iconTheme: const IconThemeData(color: Colors.white, size: 30),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: MyColor.azul.shade500,
                borderRadius: BorderRadius.circular(20),
              ),
              height: altura * 0.7,
              width: largura * 0.99,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //

                    //Título
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Novo Lançamento",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: MyColor.azul.shade600,
                          ),
                        ),
                      ),
                    ),
                    //

                    //
                    //Formulário
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: MeuForm(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
