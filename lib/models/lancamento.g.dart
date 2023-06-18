// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lancamento.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LancamentoAdapter extends TypeAdapter<Lancamento> {
  @override
  final int typeId = 1;

  @override
  Lancamento read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Lancamento(
      io: fields[0] as bool,
      titulo: fields[1] as String,
      tipo: fields[2] as String,
      data: fields[3] as String,
      infos: fields[4] as String,
      preco: fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Lancamento obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.io)
      ..writeByte(1)
      ..write(obj.titulo)
      ..writeByte(2)
      ..write(obj.tipo)
      ..writeByte(3)
      ..write(obj.data)
      ..writeByte(4)
      ..write(obj.infos)
      ..writeByte(5)
      ..write(obj.preco);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LancamentoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
