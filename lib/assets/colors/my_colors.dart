import 'package:flutter/material.dart';

class MyColor {
  static const Color entreterimento = Color(0xFF559134);

  static const Color comida = Color(0xFF946836);

  static const Color salario = Color(0xFF305C83);

  static const Color tema = caribeancurrent;
  static Color backgroung = caribeancurrent.shade100;

  static const Color gasto = cream;
  static const Color ganho = ashgrey;

//    Vermelho Imperial (gastos)

  static const MaterialColor vermelhoimperial = MaterialColor(_vermelhoimperialPrimaryValue, <int, Color>{
    50: Color(0xFFFCE7E7),
    100: Color(0xFFF8C3C3),
    200: Color(0xFFF49B9B),
    300: Color(0xFFEF7272),
    400: Color(0xFFEB5454),
    500: Color(_vermelhoimperialPrimaryValue),
    600: Color(0xFFE53030),
    700: Color(0xFFE22929),
    800: Color(0xFFDE2222),
    900: Color(0xFFD81616),
  });
  static const int _vermelhoimperialPrimaryValue = 0xFFE83636;

  static const MaterialColor vermelhoimperialAccent = MaterialColor(_vermelhoimperialAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_vermelhoimperialAccentValue),
    400: Color(0xFFFFA3A3),
    700: Color(0xFFFF8A8A),
  });
  static const int _vermelhoimperialAccentValue = 0xFFFFD6D6;

//    Erin  (ganhos)

  static const MaterialColor erin = MaterialColor(_erinPrimaryValue, <int, Color>{
    50: Color(0xFFE0FEE9),
    100: Color(0xFFB3FEC8),
    200: Color(0xFF80FDA3),
    300: Color(0xFF4DFC7E),
    400: Color(0xFF26FB62),
    500: Color(_erinPrimaryValue),
    600: Color(0xFF00F93F),
    700: Color(0xFF00F937),
    800: Color(0xFF00F82F),
    900: Color(0xFF00F620),
  });
  static const int _erinPrimaryValue = 0xFF00FA46;

  static const MaterialColor erinAccent = MaterialColor(_erinAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_erinAccentValue),
    400: Color(0xFFB7FFBC),
    700: Color(0xFF9DFFA5),
  });
  static const int _erinAccentValue = 0xFFEAFFEB;

//    Neon blue

  static const MaterialColor neonblue = MaterialColor(_neonbluePrimaryValue, <int, Color>{
    50: Color(0xFFE8ECFE),
    100: Color(0xFFC5D0FC),
    200: Color(0xFF9FB1FB),
    300: Color(0xFF7992F9),
    400: Color(0xFF5C7AF7),
    500: Color(_neonbluePrimaryValue),
    600: Color(0xFF395BF5),
    700: Color(0xFF3151F3),
    800: Color(0xFF2947F2),
    900: Color(0xFF1B35EF),
  });
  static const int _neonbluePrimaryValue = 0xFF3F63F6;

  static const MaterialColor neonblueAccent = MaterialColor(_neonblueAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_neonblueAccentValue),
    400: Color(0xFFBDC4FF),
    700: Color(0xFFA3ADFF),
  });
  static const int _neonblueAccentValue = 0xFFF0F1FF;

//    Caribean Current

  static const MaterialColor caribeancurrent = MaterialColor(_caribeancurrentPrimaryValue, <int, Color>{
    50: Color(0xFFE3ECEC),
    100: Color(0xFFB9CFD1),
    200: Color(0xFF8AB0B2),
    300: Color(0xFF5B9093),
    400: Color(0xFF38787B),
    500: Color(_caribeancurrentPrimaryValue),
    600: Color(0xFF12585C),
    700: Color(0xFF0F4E52),
    800: Color(0xFF0C4448),
    900: Color(0xFF063336),
  });
  static const int _caribeancurrentPrimaryValue = 0xFF156064;

  static const MaterialColor caribeancurrentAccent = MaterialColor(_caribeancurrentAccentValue, <int, Color>{
    100: Color(0xFF6FF4FF),
    200: Color(_caribeancurrentAccentValue),
    400: Color(0xFF09EBFF),
    700: Color(0xFF00DBEE),
  });
  static const int _caribeancurrentAccentValue = 0xFF3CF0FF;

//    Reseda Green

  static const MaterialColor resedagreen = MaterialColor(_resedagreenPrimaryValue, <int, Color>{
    50: Color(0xFFEFEEEB),
    100: Color(0xFFD7D5CE),
    200: Color(0xFFBCBAAE),
    300: Color(0xFFA19E8D),
    400: Color(0xFF8D8974),
    500: Color(_resedagreenPrimaryValue),
    600: Color(0xFF716C54),
    700: Color(0xFF66614A),
    800: Color(0xFF5C5741),
    900: Color(0xFF494430),
  });
  static const int _resedagreenPrimaryValue = 0xFF79745C;

  static const MaterialColor resedagreenAccent = MaterialColor(_resedagreenAccentValue, <int, Color>{
    100: Color(0xFFFFEA99),
    200: Color(_resedagreenAccentValue),
    400: Color(0xFFFFD533),
    700: Color(0xFFFFCF1A),
  });
  static const int _resedagreenAccentValue = 0xFFFFDF66;

//    Cream

  static const MaterialColor cream = MaterialColor(_creamPrimaryValue, <int, Color>{
    50: Color(0xFFFEFEF9),
    100: Color(0xFFFCFCEF),
    200: Color(0xFFFBFBE4),
    300: Color(0xFFF9F9D9),
    400: Color(0xFFF7F7D1),
    500: Color(_creamPrimaryValue),
    600: Color(0xFFF5F5C3),
    700: Color(0xFFF3F3BC),
    800: Color(0xFFF2F2B5),
    900: Color(0xFFEFEFA9),
  });
  static const int _creamPrimaryValue = 0xFFF6F6C9;

  static const MaterialColor creamAccent = MaterialColor(_creamAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_creamAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _creamAccentValue = 0xFFFFFFFF;

//    Ash Grey

  static const MaterialColor ashgrey = MaterialColor(_ashgreyPrimaryValue, <int, Color>{
    50: Color(0xFFF7F9F8),
    100: Color(0xFFEAF1ED),
    200: Color(0xFFDDE8E1),
    300: Color(0xFFCFDFD4),
    400: Color(0xFFC4D8CB),
    500: Color(_ashgreyPrimaryValue),
    600: Color(0xFFB3CCBC),
    700: Color(0xFFABC6B4),
    800: Color(0xFFA3C0AC),
    900: Color(0xFF94B59F),
  });
  static const int _ashgreyPrimaryValue = 0xFFBAD1C2;

  static const MaterialColor ashgreyAccent = MaterialColor(_ashgreyAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_ashgreyAccentValue),
    400: Color(0xFFEBFFF1),
    700: Color(0xFFD1FFE0),
  });
  static const int _ashgreyAccentValue = 0xFFFFFFFF;

//    Persian green

  static const MaterialColor persiangreen = MaterialColor(_persiangreenPrimaryValue, <int, Color>{
    50: Color(0xFFEAF4F2),
    100: Color(0xFFCAE3DF),
    200: Color(0xFFA7D0CA),
    300: Color(0xFF84BDB5),
    400: Color(0xFF69AEA5),
    500: Color(_persiangreenPrimaryValue),
    600: Color(0xFF48988D),
    700: Color(0xFF3F8E82),
    800: Color(0xFF368478),
    900: Color(0xFF267367),
  });
  static const int _persiangreenPrimaryValue = 0xFF4FA095;

  static const MaterialColor persiangreenAccent = MaterialColor(_persiangreenAccentValue, <int, Color>{
    100: Color(0xFFB6FFF2),
    200: Color(_persiangreenAccentValue),
    400: Color(0xFF50FFE1),
    700: Color(0xFF36FFDD),
  });
  static const int _persiangreenAccentValue = 0xFF83FFEA;

//    Berkeley Blue

  static const MaterialColor berkeleyblue = MaterialColor(_berkeleybluePrimaryValue, <int, Color>{
    50: Color(0xFFE3E7EC),
    100: Color(0xFFB9C2D0),
    200: Color(0xFF8A9AB1),
    300: Color(0xFF5B7191),
    400: Color(0xFF38527A),
    500: Color(_berkeleybluePrimaryValue),
    600: Color(0xFF122F5A),
    700: Color(0xFF0F2750),
    800: Color(0xFF0C2146),
    900: Color(0xFF061534),
  });
  static const int _berkeleybluePrimaryValue = 0xFF153462;

  static const MaterialColor berkeleyblueAccent = MaterialColor(_berkeleyblueAccentValue, <int, Color>{
    100: Color(0xFF6D91FF),
    200: Color(_berkeleyblueAccentValue),
    400: Color(0xFF0744FF),
    700: Color(0xFF003AEC),
  });
  static const int _berkeleyblueAccentValue = 0xFF3A6AFF;
}
