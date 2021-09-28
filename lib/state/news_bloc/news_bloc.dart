import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/bloc/bloc_interfaces.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';
import 'package:lampa_test_task/managers/hive_manager.dart';
import 'package:lampa_test_task/res/dummy_data.dart';
import 'package:lampa_test_task/state/news_bloc/news_bloc_events.dart';
import 'package:lampa_test_task/state/news_bloc/news_state.dart';

class NewsBloc extends Bloc<IEvent, NewsState> {
  NewsBloc()
      : super(NewsState(
          news: [],
          isLoading: true,
        )) {
    on<ChangeNewsToFavoriteEvent>(_changeNewsToFavorite);
    on<ChangeNewsToLikeEvent>(_changeNewsToLike);
    on<InitNewsEvent>(_initNews);
    on<HideDailyNewsEvent>(_hideDailyNews);
  }

  void _changeNewsToFavorite(ChangeNewsToFavoriteEvent event, Emitter emitter) {
    final box = Hive.box<INews>(HiveBoxName.favorites);

    print(box.values.length);
    if (
        !box.values.toList().any((element) => element == event.news)) {
      box.add(event.news);
    } else {
      box.deleteAt(box.values.toList().indexOf(event.news));
    }
    emitter(state.copyWith());
  }

  void _changeNewsToLike(ChangeNewsToLikeEvent event, Emitter emitter) {
    final box = Hive.box<INews>(HiveBoxName.likes);

    print(box.values.length);
    if (
        !box.values.toList().any((element) => element == event.news)) {
      box.add(event.news);
    } else {
      box.deleteAt(box.values.toList().indexOf(event.news));
    }
    emitter(state.copyWith());
  }

  Future<void> _initNews(InitNewsEvent event, Emitter emitter) async {
    emitter(state.copyWith(news: [], isLoading: true));
    await Future.delayed(Duration(seconds: 2));
    final news = dummyNews;
    emitter(state.copyWith(news: news, isLoading: false));
  }

  Future<void> _hideDailyNews(HideDailyNewsEvent event, Emitter emitter) async {
    emitter(state.copyWith(showDaily: false));
  }
}
