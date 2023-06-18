import 'package:hive/hive.dart';

part 'lancamento.g.dart';

@HiveType(typeId: 1)
class Lancamento {
  Lancamento({
    required this.io,
    required this.titulo,
    required this.tipo,
    required this.data,
    required this.infos,
    required this.preco,
  });

  Lancamento.empty()
      : io = false,
        titulo = " ",
        tipo = " ",
        data = " ",
        infos = " ",
        preco = 0.0;

  @HiveField(0)
  bool io;
  //true = entrada
  //false = saida

  @HiveField(1)
  String titulo;

  @HiveField(2)
  String tipo;

  @HiveField(3)
  String data;

  @HiveField(4)
  String infos;

  @HiveField(5)
  double preco;
}
