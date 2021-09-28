import 'package:hive/hive.dart';

part 'type_news_enum.g.dart';

@HiveType(typeId: 11)
enum TypeNews {
  @HiveField(0)
  regularNews,
  @HiveField(1)
  themeDayNews,
}
