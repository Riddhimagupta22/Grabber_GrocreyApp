 import 'package:flutter/material.dart';
import 'package:grabber/utils/theme/custom_theme/text_theme.dart';

import 'custom_theme/appbartheme.dart';

class  GAppTheme {
  GAppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    fontFamily: 'Inter',
    textTheme: GTextTheme.lightTextTheme,
    brightness: Brightness.light,
    primaryColor: Color(0XFF0CA201),
    appBarTheme: GAppBarTheme.lightappBarTheme,

    useMaterial3: true,);
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF000000),
    fontFamily: 'Inter',
    textTheme: GTextTheme.darkTextTheme,
    brightness: Brightness.dark,
    primaryColor: Color(0XFF0CA201),
    useMaterial3: true,
    appBarTheme: GAppBarTheme.darkappBarTheme,
  );


}