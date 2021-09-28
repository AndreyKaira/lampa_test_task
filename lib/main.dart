import 'package:flutter/material.dart';
import 'package:lampa_test_task/application/application.dart';
import 'package:lampa_test_task/managers/hive_manager.dart';
import 'package:lampa_test_task/utils/status_bar_color.dart';

void main() async {
  StatusBarColor.light();
  await HiveManager.initHiveBox();
  runApp(Application());
}
