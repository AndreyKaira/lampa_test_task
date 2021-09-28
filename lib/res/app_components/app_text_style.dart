import 'package:flutter/material.dart';
import 'package:lampa_test_task/res/app_data.dart';

class AppTextStyle {
  TextStyle get ubuntuThin {
    return TextStyle(
      fontFamily: AppData.constants.fontUbuntu,
      fontWeight: FontWeight.w200,
    );
  }

  TextStyle get ubuntuLight {
    return TextStyle(
      fontFamily: AppData.constants.fontUbuntu,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get ubuntuNormal{
    return TextStyle(
      fontFamily: AppData.constants.fontUbuntu,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get ubuntuMedium{
    return TextStyle(
      fontFamily: AppData.constants.fontUbuntu,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get ubuntuSemiBold{
    return TextStyle(
      fontFamily: AppData.constants.fontUbuntu,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get ubuntuBold{
    return TextStyle(
      fontFamily: AppData.constants.fontUbuntu,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get ubuntuExtraBold{
    return TextStyle(
      fontFamily: AppData.constants.fontUbuntu,
      fontWeight: FontWeight.w800,
    );
  }

  const AppTextStyle();
}
