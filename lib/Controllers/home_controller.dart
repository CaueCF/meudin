import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:meudin/data/database.dart';
import 'package:meudin/models/lancamento.dart';

class HomeController extends ChangeNotifier {
  static final HomeController _instance = HomeController._internal();

  factory HomeController() {
    return _instance;
  }

  HomeController._internal();
  Database db = Database();

  void apagaItem(Lancamento l) {
    db.dados.remove(l);
    db.updateDados();
    notifyListeners();
  }

  void adicionaItem(Lancamento l) {
    db.dados.add(l);
    db.updateDados();
    notifyListeners();
  }

  void apagarTodosItens() {
    db.dados.clear();
    db.updateDados();
    notifyListeners();
  }

  void gerarDados() {
    db.criarDadosIniciais();
    db.updateDados();
  }

  bool checaDados() {
    log("data: ${db.box.get("dados")}");
    if (db.box.get("dados") == null) {
      return true;
    } else {
      return false;
    }
  }

  void getDados() {
    db.getDados();
  }

  List get lancamentos {
    return db.dados;
  }
}
