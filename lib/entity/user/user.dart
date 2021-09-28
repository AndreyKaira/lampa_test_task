import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/child/child.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(typeId: 100)
  const factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required List<Child> childs,
    @HiveField(3) String? image,
  }) = _User;
}
