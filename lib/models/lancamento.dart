import 'package:hive/hive.dart';

part 'lancamento.g.dart';

@HiveType(typeId: 1)
class Lancamento {
  const Lancamento({
    required this.io,
    required this.titulo,
    required this.tipo,
    required this.data,
    required this.infos,
    required this.preco,
  });

  @HiveField(0)
  final bool io;
  //true = entrada
  //false = saida

  @HiveField(1)
  final String titulo;

  @HiveField(2)
  final String tipo;

  @HiveField(3)
  final String data;

  @HiveField(4)
  final String infos;

  @HiveField(5)
  final double preco;
}
