
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabber/Controller/cartcontroller.dart';
import 'package:grabber/Presentation/splash.dart';
import 'package:grabber/utils/theme/themes.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(CartController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        themeMode: ThemeMode.system,
        theme: GAppTheme.lightTheme,
        darkTheme: GAppTheme.darkTheme,
        home: const Splash());
  }
}
