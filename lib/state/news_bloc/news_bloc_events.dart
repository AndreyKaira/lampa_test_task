import 'package:lampa_test_task/bloc/bloc_interfaces.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';

class ChangeNewsToFavoriteEvent extends IEvent {
  final RegularNews news;

  ChangeNewsToFavoriteEvent({required this.news});
}

class ChangeNewsToLikeEvent extends IEvent {
  final RegularNews news;

  ChangeNewsToLikeEvent({required this.news});
}

class InitNewsEvent extends IEvent {
  InitNewsEvent();
}

class HideDailyNewsEvent extends IEvent {
  HideDailyNewsEvent();
}
