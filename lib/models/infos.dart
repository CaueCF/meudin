import 'package:flutter/material.dart';

import 'lancamento.dart';

class InfoSample {
  double altura, largura;
  final IconData icone;
  final Color cor;
  final Lancamento lancamento;

  InfoSample({
    required this.icone,
    required this.cor,
    required this.lancamento,
    required this.altura,
    required this.largura,
  });
}
