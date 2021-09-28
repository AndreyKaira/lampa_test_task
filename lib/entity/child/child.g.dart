// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenderEnumAdapter extends TypeAdapter<GenderEnum> {
  @override
  final int typeId = 7;

  @override
  GenderEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return GenderEnum.boy;
      case 1:
        return GenderEnum.girl;
      default:
        return GenderEnum.boy;
    }
  }

  @override
  void write(BinaryWriter writer, GenderEnum obj) {
    switch (obj) {
      case GenderEnum.boy:
        writer.writeByte(0);
        break;
      case GenderEnum.girl:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChildAdapter extends TypeAdapter<_$_Child> {
  @override
  final int typeId = 4;

  @override
  _$_Child read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Child(
      id: fields[0] as String,
      gender: fields[1] as GenderEnum,
      bithday: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Child obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.gender)
      ..writeByte(2)
      ..write(obj.bithday);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
