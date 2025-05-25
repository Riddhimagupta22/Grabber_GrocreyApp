import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GAppBarTheme{
  GAppBarTheme._();


  static AppBarTheme lightappBarTheme = AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,

      iconTheme: const IconThemeData(size: 20,color: Colors.black),

      titleTextStyle: GoogleFonts.inter(
        color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 19,
          height: 1,
        ),
      );
  static AppBarTheme darkappBarTheme = AppBarTheme(
  backgroundColor: Colors.black,
  elevation: 0,

  iconTheme: const IconThemeData(size: 20,color: Colors.white),

  titleTextStyle: GoogleFonts.inter(
  color: Colors.white,
  fontWeight: FontWeight.w500,
  fontSize: 19,
  height: 1,
  ),);
}