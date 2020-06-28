import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';

class HelpListPage extends StatefulWidget {
  @override
  _HelpListPageState createState() => _HelpListPageState();
}

class _HelpListPageState extends State<HelpListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyles.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 56),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'PEDIDOS DE SOCORRO',
                  style: TypographyStyle.textTitleTheme,
                ),
              ],
            ),
          ),
        ));
  }
}
