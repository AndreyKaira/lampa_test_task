import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lampa_test_task/entity/child/child.dart';
import 'package:lampa_test_task/entity/comment/comment.dart';
import 'package:lampa_test_task/entity/enums/type_news_enum.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/entity/news/theme_day_news/theme_day_news.dart';
import 'package:lampa_test_task/entity/theme/theme.dart';
import 'package:lampa_test_task/entity/user/user.dart';


class HiveManager {
  static Future<void> initHiveBox() async {
    await Hive.initFlutter();

    Hive.registerAdapter(ThemeAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(ChildAdapter());
    Hive.registerAdapter(CommentAdapter());
    Hive.registerAdapter(RegularNewsAdapter());
    Hive.registerAdapter(ThemeDayNewsAdapter());
    Hive.registerAdapter(GenderEnumAdapter());
    Hive.registerAdapter(TypeNewsAdapter());


    await Hive.deleteFromDisk();
    await Hive.openBox(HiveBoxName.favorites);
    await Hive.openBox(HiveBoxName.likes);
  }
}

class HiveBoxName {
  static String favorites = 'favorites';
  static String likes = 'likes';
}

extension GetValues on LazyBox {
  Future<Iterable> get values async {
    final res = [];
    await Future.forEach(keys, (key) async => res.add(await get(key)));
    return res;
  }
}
