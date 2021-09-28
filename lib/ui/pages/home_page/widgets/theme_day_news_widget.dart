import 'package:flutter/material.dart';
import 'package:lampa_test_task/entity/news/theme_day_news/theme_day_news.dart';
import 'package:lampa_test_task/res/app_data.dart';

class ThemeDayNewsWidget extends StatelessWidget {
  final ThemeDayNews news;
  final void Function() onClose;

  ThemeDayNewsWidget({required this.news, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppData.colors.teal,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_forward_outlined, size: 20, color: AppData.colors.white),
              const SizedBox(width: 4.0),
              Text(
                news.theme.name,
                style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.white),
              ),
              const Spacer(),
              IconButton(
                icon: Icon(Icons.close, color: AppData.colors.white),
                onPressed: onClose,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              news.content,
              style: AppData.textStyle.ubuntuSemiBold.copyWith(
                color: AppData.colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
