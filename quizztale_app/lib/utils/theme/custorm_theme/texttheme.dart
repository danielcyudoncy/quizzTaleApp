import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizztale_app/utils/constant/colors.dart';

class QuizzTaleTextTheme {
  QuizzTaleTextTheme._();
  static TextTheme lightTexttheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 24.0,
      color: primaryColor,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  );

  static TextTheme darkTexttheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 24.0,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 16.0,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
  );
}
