import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'theme.freezed.dart';

part 'theme.g.dart';

@freezed
class Theme with _$Theme {
  @HiveType(typeId: 0)
  const factory Theme({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
  }) = _Theme;
}
