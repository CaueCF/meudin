import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meudin/models/lancamento.dart';

import 'icone_menu.dart';
//import 'package:intl/intl.dart';

class MeuForm extends StatefulWidget {
  const MeuForm({super.key});

  @override
  State<MeuForm> createState() => _MeuFormState();
}

class _MeuFormState extends State<MeuForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<DropdownMenuItem> itens = [
    // //Vazio
    // const DropdownMenuItem(
    //   value: " ",
    //   child: Text(""),
    // ),

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
      value: "Trabalho",
      child: Text("Trabalho"),
    ),
  ];

  String dropValor = " ";

  @override
  void initState() {
    dropValor = itens[1].value;
    super.initState();
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
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Título',

                  //Estilo
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none,
                  ),
                ),

                //Validação
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Favor inserir informações';
                  }

                  return null;
                },

                //onSaved: (String? value) {},
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
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: IconeMenu(s: dropValor),
                  label: const Padding(
                    padding: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "Categoria",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  //Estilo
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none,
                  ),
                ),

                onChanged: (value) {
                  dropValor = value;

                  setState(() {
                    dropValor;
                  });
                },
              ),

              //
              //
              //Valor
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                //Decoração
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Valor',

                  //Estilo
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none,
                  ),
                ),

                //Validação
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Favor inserir informações';
                  }
                  return null;
                },

                //onSaved: (String? value) {},
              ),
              const SizedBox(height: 5),

              //
              //
              //Observações
              TextFormField(
                //Decoração
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Descrição',

                  //Estilo
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none,
                  ),
                ),

                //Validação
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Favor inserir informações';
                  }
                  return null;
                },

                onSaved: (String? value) {},
              ),

              //Salvar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or
                      // false if the form is invalid.
                      if (_formKey.currentState!.validate()) {
                        // Process data.
                      }
                    },
                    child: const Text('Salvar'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
