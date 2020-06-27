import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/text.dart';

class ThemeStyle {
  static ThemeData mainTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TypographyStyle.primaryTextTheme,
  );
}
