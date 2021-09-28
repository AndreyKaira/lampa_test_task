import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:lampa_test_task/bloc/bloc_interfaces.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';

part 'news_state.g.dart';

@CopyWith()
class NewsState extends IState {
  final List<INews> news;
  final bool isLoading;
  final bool showDaily;

  NewsState({
    required this.news,
    required this.isLoading,
    this.showDaily = true,
  });


}
