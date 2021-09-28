import 'package:flutter/material.dart';
import 'package:lampa_test_task/entity/child/child.dart';
import 'package:lampa_test_task/res/app_data.dart';

class ChildAgeWidget extends StatelessWidget {
  final Child child;

  const ChildAgeWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: child.gender == GenderEnum.boy ? AppData.colors.teal : AppData.colors.pink,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      padding: const EdgeInsets.all(4.0),
      child: Text(
        _getCurrentText,
        style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.white),
      ),
    );
  }

  String get _getCurrentText {
    final date = DateTime.now().difference(child.bithday);

    if (date.inDays < 30) {
      return '${date.inDays ~/ 7}н';
    } else if (date.inDays < 365) {
      return '${date.inDays ~/ 30}м';
    }
    return '${date.inDays ~/ 365}${date.inDays ~/ 365 > 4 ? 'л' : 'г'} ${date.inDays ~/ 30 % 12}м';
  }
}
