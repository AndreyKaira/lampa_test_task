import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lampa_test_task/bloc/bloc_widgets.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/state/news_bloc/news_bloc_events.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/news_list.dart';
import 'package:lampa_test_task/ui/widgets/main_app_bar/main_app_bar.dart';
import 'package:lampa_test_task/ui/widgets/shimmers/main_shimer.dart';

import 'home_page_vm.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext _) {
    return ViewModelBuilder<HomePageViewModel>(
      postFrameCallback: (vm) => vm.dispatch(InitNewsEvent()),
      converter: (context) => HomePageViewModel(context),
      builder: (context, vm) {
        return Scaffold(
          backgroundColor: AppData.colors.grey2,
          appBar: MainAppBar(tabController: _tabController),
          body: Visibility(
            visible: !vm.isLoading,
            replacement: MainShimmer(),
            child: TabBarView(
              controller: _tabController,
              children: [
                NewsList(news: vm.news),
                NewsList(news: vm.popularNews),
                NewsList(news: vm.favoritesNews),
              ],
            ),
          ),
        );
      },
    );
  }
}
