import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TypographyStyle {
  static TextTheme primaryTextTheme = TextTheme(
    headline1: GoogleFonts.shareTech(
      fontSize: 28,
      color: ColorStyles.primaryTextColor,
    ),
  );

  static TextStyle textTitleTheme = GoogleFonts.shareTech(
    fontSize: 28,
    color: ColorStyles.primaryTextColor,
  );
}
