import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/comment/comment.dart';
import 'package:lampa_test_task/entity/enums/type_news_enum.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';
import 'package:lampa_test_task/entity/theme/theme.dart';
import 'package:lampa_test_task/entity/user/user.dart';

part 'regular_news.freezed.dart';

part 'regular_news.g.dart';

@freezed
class RegularNews extends INews with _$RegularNews {
  @HiveType(typeId: 3)
  factory RegularNews({
    @HiveField(0) required String id,
    @HiveField(1) required Theme theme,
    @HiveField(2) required String title,
    @HiveField(3) required String content,
    @HiveField(4) required DateTime postTime,
    @HiveField(5) required int likes,
    @HiveField(6) required List<Comment> comments,
    @HiveField(7) required User user,
    @HiveField(8) required TypeNews type,
    @HiveField(9) String? image,
  }) = _RegularNews;
}
