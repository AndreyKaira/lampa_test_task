import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/enums/type_news_enum.dart';
import 'package:lampa_test_task/entity/theme/theme.dart';

part 'i_news.g.dart';

@HiveType(typeId: 1)
class INews{
  @HiveField(1)
  final String id;
  @HiveField(2)
  final Theme theme;
  @HiveField(3)
  final TypeNews type;

  INews({
    required this.id,
    required this.theme,
    required this.type,
  });
}


