import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';

class HelpListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorStyles.backgroundColor,
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            child: Image.asset(
              'images/background.png',
              height: height,
              width: width,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
