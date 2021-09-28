import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/enums/type_news_enum.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';
import 'package:lampa_test_task/entity/theme/theme.dart';

part 'theme_day_news.freezed.dart';

part 'theme_day_news.g.dart';

@freezed
class ThemeDayNews extends INews with _$ThemeDayNews {
  @HiveType(typeId: 2)
  const factory ThemeDayNews({
    @HiveField(0) required String id,
    @HiveField(1) required Theme theme,
    @HiveField(2) required String content,
    @HiveField(3) required TypeNews type,
  }) = _ThemeDayNews;
}
