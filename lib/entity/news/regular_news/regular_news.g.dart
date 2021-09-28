// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regular_news.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegularNewsAdapter extends TypeAdapter<_$_RegularNews> {
  @override
  final int typeId = 3;

  @override
  _$_RegularNews read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_RegularNews(
      id: fields[0] as String,
      theme: fields[1] as Theme,
      title: fields[2] as String,
      content: fields[3] as String,
      postTime: fields[4] as DateTime,
      likes: fields[5] as int,
      comments: (fields[6] as List).cast<Comment>(),
      user: fields[7] as User,
      type: fields[8] as TypeNews,
      image: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_RegularNews obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.theme)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.content)
      ..writeByte(4)
      ..write(obj.postTime)
      ..writeByte(5)
      ..write(obj.likes)
      ..writeByte(6)
      ..write(obj.comments)
      ..writeByte(7)
      ..write(obj.user)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegularNewsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
