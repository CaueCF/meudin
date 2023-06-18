import 'package:flutter/material.dart';

class MyColor {
  static const MaterialColor azul = MaterialColor(_primaryAzul, <int, Color>{
    50: Color(0xFFD8E3FE),
    100: Color(0xFFD8E3FE),
    200: Color(0XFFB2C6FE),
    300: Color(0XFF8BA6FC),
    400: Color(0XFF6E8CF9),
    500: Color(_primaryAzul),
    600: Color(0XFF2E4BD3),
    700: Color(0XFF1F36B1),
    800: Color(0xff14248e),
    900: Color(0XFF0C1876),
  });

  static const int _primaryAzul = 0XFF3F63F6;

  static const Color gasto = Color(0xFFE83636);

  static const Color ganho = Color(0xFF00FA46);

  static const Color entreterimento = Color(0xFF559134);

  static const Color comida = Color(0xFF946836);

  static const Color salario = Color(0xFF305C83);
}
