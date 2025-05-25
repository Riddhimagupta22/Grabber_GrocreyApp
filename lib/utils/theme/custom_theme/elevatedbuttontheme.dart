import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GElevatedButtonTheme {
  GElevatedButtonTheme._();

  static final LightElevatedButtonTheme = ElevatedButtonThemeData(
    style:  ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Color(0XFF0CA201),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: BorderSide(color: Color(0XFF0CA201)),
      padding: EdgeInsets.symmetric(vertical: 18),
      textStyle: GoogleFonts.inter(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style:  ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Color(0XFF0CA201),
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: BorderSide(color: Color(0XFF0CA201)),
        padding: EdgeInsets.symmetric(vertical: 18),
        textStyle: GoogleFonts.inter(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
    ),
  );
}