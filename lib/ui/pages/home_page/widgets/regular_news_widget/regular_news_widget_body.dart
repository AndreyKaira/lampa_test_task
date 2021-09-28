import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/res/app_data.dart';

class RegularNewsWidgetBody extends StatelessWidget {
  final RegularNews news;

  RegularNewsWidgetBody({required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8.0),
        if (news.image != null) Image.network(news.image!),
        if (news.image != null) const SizedBox(height: 8.0),
        Text(
          news.title,
          style: AppData.textStyle.ubuntuBold.copyWith(
            color: AppData.colors.black,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 12.0),
        Text(
          news.content,
          style: AppData.textStyle.ubuntuNormal.copyWith(
            color: AppData.colors.black,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 12.0),
        Row(
          children: [
            Text(
              intl.DateFormat.yMMMMd(AppData.constants.ru).format(news.postTime),
              style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.grey),
            ),
            const Spacer(),
            Icon(Icons.arrow_forward_outlined, size: 20, color: AppData.colors.grey),
            const SizedBox(width: 4.0),
            Text(
              news.theme.name,
              style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 12.0),
      ],
    );
  }
}
