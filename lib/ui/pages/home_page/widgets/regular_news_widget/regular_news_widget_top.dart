import 'package:flutter/material.dart';
import 'package:lampa_test_task/entity/user/user.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/child_age_widget.dart';

class RegularNewsWidgetTop extends StatelessWidget {
  final User user;

  RegularNewsWidgetTop({required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: FadeInImage(
            placeholder: AssetImage(AppData.images.emptyUser),
            imageErrorBuilder: (context, error, stackTrace) =>
                Image.asset(AppData.images.emptyUser),
            image: NetworkImage(user.image ?? AppData.constants.emptyString),
          ),
        ),
        const SizedBox(width: 4.0),
        Text(
          user.name,
          style: AppData.textStyle.ubuntuSemiBold,
        ),
        const SizedBox(width: 4.0),
        ...user.childs.map((e) => ChildAgeWidget(child: e)).toList(),
      ],
    );
  }
}
