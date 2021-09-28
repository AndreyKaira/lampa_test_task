import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/user/user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  @HiveType(typeId: 8)
  const factory Comment({
    @HiveField(0) required String id,
    @HiveField(1) required User user,
    @HiveField(2) required String content,
  }) = _Comment;
}
