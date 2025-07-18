import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';

class GTextTheme {
  GTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.inter(
      fontSize: GSizes.fontSizeMd,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: GSizes.fontSizeMd,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: GSizes.fontSizeMd,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.inter(
      fontSize: GSizes.fontSizeMd,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: GSizes.fontSizeMd,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: GSizes.fontSizeMd,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: GSizes.fontSizeMd,
      fontWeight: FontWeight.w600,
      color: Colors.white70,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm,
      fontWeight: FontWeight.w500,
      color: Colors.white70,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w400,
      color: Colors.white70,
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: GSizes.fontSizeSm1,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  );
}
