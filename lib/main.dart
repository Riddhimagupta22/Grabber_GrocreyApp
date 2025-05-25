import 'package:flutter/material.dart';
import 'package:grabber/Presentation/splash.dart';
import 'package:grabber/utils/theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,

      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
      home: Splash()
    );
  }
}

