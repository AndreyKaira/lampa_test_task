// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_day_news.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemeDayNewsAdapter extends TypeAdapter<_$_ThemeDayNews> {
  @override
  final int typeId = 2;

  @override
  _$_ThemeDayNews read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ThemeDayNews(
      id: fields[0] as String,
      theme: fields[1] as Theme,
      content: fields[2] as String,
      type: fields[3] as TypeNews,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ThemeDayNews obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.theme)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeDayNewsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
