import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:meudin/Controllers/home_controller.dart';
import 'package:meudin/models/lancamento.dart';

import 'icone_menu.dart';
//import 'package:intl/intl.dart';

class MeuForm extends StatefulWidget {
  const MeuForm({super.key, required this.tema});

  final Color tema;

  @override
  State<MeuForm> createState() => _MeuFormState();
}

class _MeuFormState extends State<MeuForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<DropdownMenuItem> itens = [
    // //Vazio
    const DropdownMenuItem(
      value: "selecione",
      enabled: false,
      child: Text("Selecione a categoria"),
    ),

    //Entreterimento
    const DropdownMenuItem(
      value: "Entreterimento",
      child: Text("Entreterimento"),
    ),

    //Comida
    const DropdownMenuItem(
      value: "Comida",
      child: Text("Comida"),
    ),

    //Salario
    const DropdownMenuItem(
      value: "Salário",
      child: Text("Salário"),
    ),
  ];

  String dropValor = " ";

  Lancamento l = Lancamento.empty();
  HomeController controller = HomeController();

  InputBorder borda = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );

  InputDecoration decoracaoPadrao({String label = "", Widget? icone}) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      labelText: label,

      prefixIcon: icone,

      //Estilo
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),

      floatingLabelStyle: const TextStyle(
        backgroundColor: Colors.white,
      ),
      border: borda,
    );
  }

  @override
  void initState() {
    dropValor = itens[0].value;
    l.tipo = dropValor;
    l.io = testaTipo(dropValor);
    super.initState();
  }

  bool testaTipo(String s) {
    switch (s) {
      case "Comida":
        return false;
      case "Entreterimento":
        return false;
      case "Salário":
        return true;
      default:
        return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              //
              //
              //Titulo do lançamento

              TextFormField(
                //Decoração
                decoration: decoracaoPadrao(label: "Titulo"),

                textCapitalization: TextCapitalization.sentences,

                //Validação
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Favor inserir informações';
                  }

                  return null;
                },

                onSaved: (String? value) {
                  l.titulo = value!;
                },
              ),
              const SizedBox(height: 5),
              //
              //
              //Dropdown
              DropdownButtonFormField(
                value: dropValor,
                items: itens,
                padding: const EdgeInsets.only(bottom: 5),

                //Decoração
                decoration: decoracaoPadrao(icone: IconeMenu(s: dropValor)),

                validator: (value) {
                  if (value == itens[0].value) {
                    return 'Por favor selecione a categoria!';
                  }
                  return null;
                },

                onChanged: (value) {
                  dropValor = value;
                  l.tipo = value;
                  l.io = testaTipo(dropValor);
                  setState(() {
                    dropValor;
                  });
                },
              ),

              //
              //
              //Valor
              TextFormField(
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                //inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                //Decoração
                decoration: decoracaoPadrao(label: "Valor"),

                //Validação
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Favor inserir informações';
                  }
                  return null;
                },

                onSaved: (String? value) {
                  l.preco = double.parse(value!);
                },
              ),
              const SizedBox(height: 5),

              //
              //
              //Observações
              TextFormField(
                //Decoração
                decoration: decoracaoPadrao(label: "Descrição"),

                textCapitalization: TextCapitalization.sentences,

                onSaved: (String? value) {
                  l.infos = value ?? " ";
                },
              ),

              //Salvar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      initializeDateFormatting('pt_BR', null);
                      l.data = DateFormat('dd/MM hh:mm').format(DateTime.now());
                      // Validate will return true if the form is valid, or
                      // false if the form is invalid.
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        controller.adicionaItem(l);
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text(
                      'Salvar',
                      style: TextStyle(color: widget.tema),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
