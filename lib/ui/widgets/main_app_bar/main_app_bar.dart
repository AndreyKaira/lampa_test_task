import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lampa_test_task/res/app_data.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final TabController tabController;

  MainAppBar({
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(AppData.images.logo, height: 40.0, color: AppData.colors.teal),
          const SizedBox(width: 20.0),
          Text(
            AppData.constants.appBarTitle,
            style: AppData.textStyle.ubuntuBold.copyWith(color: AppData.colors.black),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.location_on_outlined, color: AppData.colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: AppData.colors.black),
        ),
      ],
      backgroundColor: Colors.white,
      bottom: TabBar(
        controller: tabController,
        labelColor: AppData.colors.black,
        unselectedLabelColor: AppData.colors.grey2,
        indicatorWeight: 6.0,
        labelStyle: AppData.textStyle.ubuntuBold,
        indicatorColor: AppData.colors.teal,
        tabs: [
          Tab(text: AppData.constants.tabBarNew),
          Tab(text: AppData.constants.tabBarPopular),
          Tab(text: AppData.constants.tabBarFavorites),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 120.0);
}
