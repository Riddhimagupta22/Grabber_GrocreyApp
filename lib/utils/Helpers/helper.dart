import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GHelperFunction {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Red') {
      return Colors.red;
    } else {
      return null;
    }
  }

  static void showSnakBar(String msg) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  static void showAlert(String msg, String title) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(msg),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Okay'))
            ],
          );
        });
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeigth(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
}
