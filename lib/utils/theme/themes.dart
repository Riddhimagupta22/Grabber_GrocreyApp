import 'package:flutter/material.dart';
import 'package:grabber/utils/theme/custom_theme/text_theme.dart';

import '../constants/comman/colors.dart';
import 'custom_theme/appbartheme.dart';

class GAppTheme {
  GAppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    textTheme: GTextTheme.lightTextTheme,
    brightness: Brightness.light,
    primaryColor: const Color(0XFF0CA201),
    appBarTheme: GAppBarTheme.lightappBarTheme,
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Gcolour.green,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF000000),
    textTheme: GTextTheme.darkTextTheme,
    brightness: Brightness.dark,
    primaryColor: const Color(0XFF0CA201),
    useMaterial3: true,
    appBarTheme: GAppBarTheme.darkappBarTheme,
  );
}
