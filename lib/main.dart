import 'package:flutter/material.dart';
import 'package:grabber/Presentation/splash.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF0CA201)),
        useMaterial3: true,
      ),
      home: Splash()
    );
  }
}

