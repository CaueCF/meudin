import 'package:flutter/material.dart';

import '../assets/colors/my_colors.dart';

class SaldoLivre extends StatelessWidget {
  const SaldoLivre({
    super.key,
    required this.saldo,
  });

  final double saldo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColor.azul,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 53,
      width: 162,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Saldo disponível",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Icon(Icons.account_balance, color: Colors.white),
              ),
              Expanded(
                child: Text(
                  "R\$$saldo",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
