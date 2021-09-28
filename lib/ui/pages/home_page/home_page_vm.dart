import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/managers/hive_manager.dart';
import 'package:lampa_test_task/state/news_bloc/news_state.dart';
import '../../../entity/shared/i_view_model.dart';

class HomePageViewModel extends IViewModel {
  late final List<INews> news;
  late final List<INews> popularNews;
  late final List<INews> favoritesNews;
  late final bool isLoading;

  HomePageViewModel(BuildContext context) : super(context) {
    news = read<NewsState>().showDaily
        ? watch<NewsState>().news
        : watch<NewsState>().news.whereType<RegularNews>().toList();
    popularNews = () {
      final news = watch<NewsState>().news.whereType<RegularNews>().toList();
      news.sort((a, b) => b.likes.compareTo(a.likes));
      return news;
    }();
    favoritesNews = List<INews>.unmodifiable(Hive.box(HiveBoxName.favorites).values.toList());
    isLoading = watch<NewsState>().isLoading;
  }

  @override
  bool isSame(HomePageViewModel viewModel) {
    return false;
  }
}
