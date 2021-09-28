// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_news_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TypeNewsAdapter extends TypeAdapter<TypeNews> {
  @override
  final int typeId = 11;

  @override
  TypeNews read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TypeNews.regularNews;
      case 1:
        return TypeNews.themeDayNews;
      default:
        return TypeNews.regularNews;
    }
  }

  @override
  void write(BinaryWriter writer, TypeNews obj) {
    switch (obj) {
      case TypeNews.regularNews:
        writer.writeByte(0);
        break;
      case TypeNews.themeDayNews:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeNewsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
