import 'package:flutter/material.dart';
import 'package:lampa_test_task/bloc/bloc_widgets.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/state/news_bloc/news_bloc.dart';
import 'package:lampa_test_task/state/news_bloc/news_state.dart';
import '../ui/pages/home_page/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale(AppData.constants.ru),
      supportedLocales: [Locale(AppData.constants.ru)],
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: BlocHolder<NewsState>(
        bloc: NewsBloc(),
        child: HomePage(),
      ),
    );
  }
}
