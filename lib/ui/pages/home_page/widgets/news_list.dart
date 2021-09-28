import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:lampa_test_task/bloc/bloc_widgets.dart';
import 'package:lampa_test_task/entity/enums/type_news_enum.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/entity/news/theme_day_news/theme_day_news.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/state/news_bloc/news_bloc_events.dart';
import 'package:lampa_test_task/ui/pages/home_page/home_page_vm.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/regular_news_widget.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/theme_day_news_widget.dart';

class NewsList extends StatelessWidget {
  final List<INews> news;

  NewsList({
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>(
      converter: (context) => HomePageViewModel(context),
      builder: (context, vm) {
        return Visibility(
          visible: news.isNotEmpty,
          replacement: Container(
            color: AppData.colors.white,
            alignment: Alignment.center,
            child: Text(
              'Вы не добавили ни одной статьи в избранное...',
              textAlign: TextAlign.center,
              style: AppData.textStyle.ubuntuBold.copyWith(fontSize: 32),
            ),
          ),
          child: ListView(
            children: [
              for (INews newsItem in news)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: _chooseNewsWidget(newsItem, vm),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _chooseNewsWidget(INews news, HomePageViewModel vm) {
    switch (news.type) {
      case TypeNews.themeDayNews:
        return ThemeDayNewsWidget(
          news: news as ThemeDayNews,
          onClose: () => vm.dispatch(HideDailyNewsEvent()),
        );
      case TypeNews.regularNews:
        return RegularNewsWidget(
          news: news as RegularNews,
          favoriteFunction: () => vm.dispatch(ChangeNewsToFavoriteEvent(news: news)),
          likeFunction: () => vm.dispatch(ChangeNewsToLikeEvent(news: news)),
        );
      default:
        return const SizedBox();
    }
  }
}
