import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:meudin/assets/colors/my_colors.dart';
import 'package:meudin/models/lancamento.dart';
import 'package:meudin/pages/my_home_page.dart';

void main() async {
  Intl.defaultLocale = 'pt-BR';

  await Hive.initFlutter();
  Hive.registerAdapter(LancamentoAdapter());
  // ignore: unused_local_variable
  var box = await Hive.openBox('lancamentos');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeuDin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: MyColor.azul,
      ),
      home: const MyHomePage(title: 'Pagina inicial'),
    );
  }
}
