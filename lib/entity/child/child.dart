import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'child.freezed.dart';

part 'child.g.dart';

@freezed
class Child with _$Child {
  @HiveType(typeId: 4)
  const factory Child({
    @HiveField(0) required String id,
    @HiveField(1) required GenderEnum gender,
    @HiveField(2) required DateTime bithday,
  }) = _Child;
}

@HiveType(typeId: 7)
enum GenderEnum {
  @HiveField(0)
  boy,
  @HiveField(1)
  girl,
}
