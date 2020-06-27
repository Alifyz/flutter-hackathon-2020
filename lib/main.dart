import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hackathon',
      theme: ThemeStyle.mainTheme,
      home: Scaffold(
        backgroundColor: ColorStyles.backgroundColor,
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
