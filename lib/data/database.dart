import 'package:hive/hive.dart';

import '../models/lancamento.dart';

class Database {
  List dados = [];
  final box = Hive.box('lancamentos');

  void criarDadosIniciais() {
    dados = <Lancamento>[
      const Lancamento(
        io: false,
        titulo: "iFood",
        tipo: "Comida",
        data: "12/01 20:00",
        infos: "daysgdasygdasd",
        preco: 10.00,
      ),
      const Lancamento(
        io: false,
        tipo: "Entreterimento",
        preco: 50.00,
        titulo: "Boliche",
        data: "15/01 19:00",
        infos: "asdgaisgdaisd",
      ),
      const Lancamento(
        io: true,
        tipo: "Salário",
        preco: 400.00,
        titulo: "Salário",
        data: "05/01 10:00",
        infos: "äsjdhausdhueaeufga",
      ),
      const Lancamento(
        io: false,
        tipo: "Comida",
        preco: 10.00,
        titulo: "iFood",
        data: "12/01 20:00",
        infos: "daysgdasygdasd",
      ),
      const Lancamento(
        io: false,
        tipo: "Entreterimento",
        preco: 50.00,
        titulo: "Boliche",
        data: "15/01 19:00",
        infos: "asdgaisgdaisd",
      ),
      const Lancamento(
        io: true,
        tipo: "Salário",
        preco: 400.00,
        titulo: "Salário",
        data: "05/01 10:00",
        infos: "äsjdhausdhueaeufga",
      ),
      const Lancamento(
        io: false,
        tipo: "Comida",
        preco: 10.00,
        titulo: "iFood",
        data: "12/01 20:00",
        infos: "daysgdasygdasd",
      ),
      const Lancamento(
        io: false,
        tipo: "Entreterimento",
        preco: 50.00,
        titulo: "Boliche",
        data: "15/01 19:00",
        infos: "asdgaisgdaisd",
      ),
    ];
  }

  void getDados() {
    dados = box.get("dados");
  }

  void updateDados() {
    box.put("dados", dados);
  }
}
