// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_news.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class INewsAdapter extends TypeAdapter<INews> {
  @override
  final int typeId = 1;

  @override
  INews read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return INews(
      id: fields[1] as String,
      theme: fields[2] as Theme,
      type: fields[3] as TypeNews,
    );
  }

  @override
  void write(BinaryWriter writer, INews obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.theme)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is INewsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
