import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/managers/hive_manager.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/regular_news_widget/regular_news_widget_body.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/regular_news_widget/regular_news_widget_bottom.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/regular_news_widget/regular_news_widget_top.dart';

class RegularNewsWidget extends StatelessWidget {
  final RegularNews news;
  final void Function() favoriteFunction;
  final void Function() likeFunction;

  final likesBox = Hive.box(HiveBoxName.likes);
  final favoritesBox = Hive.box(HiveBoxName.favorites);

  RegularNewsWidget({
    required this.news,
    required this.favoriteFunction,
    required this.likeFunction,
  });

  @override
  Widget build(BuildContext context) {
    final isLike = likesBox.values.any((element) => element.id == news.id);
    final isFavorites = favoritesBox.values.any((element) => element.id == news.id);
    return Container(
      color: AppData.colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RegularNewsWidgetTop(user: news.user),
          RegularNewsWidgetBody(news: news),
          RegularNewsWidgetBottom(
            news: news,
            isLike: isLike,
            isFavorites: isFavorites,
            likeFunction: likeFunction,
            favoriteFunction: favoriteFunction,
          ),
        ],
      ),
    );
  }
}
