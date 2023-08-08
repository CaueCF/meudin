import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({
    super.key,
    required this.nome,
  });

  final String nome;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        height: 52,
        width: 127,
      ),
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey,
            ),
            height: 52,
            width: 54.57,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              nome,
              style: const TextStyle(
                fontSize: 18,
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    ]);
  }
}
