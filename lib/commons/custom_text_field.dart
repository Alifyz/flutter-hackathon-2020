import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    this.label,
    this.controller,
    this.lines = 1,
    this.icon,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;
  final int lines;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: TextFormField(
        minLines: lines,
        maxLines: lines * 2,
        style: TypographyStyle.defaultTextTheme,
        decoration: InputDecoration(
          prefixIcon: icon,
          filled: true,
          hintStyle: TextStyle(color: ColorStyles.primaryTextColor),
          focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white, style: BorderStyle.solid),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white, style: BorderStyle.solid),
          ),
          fillColor: Color.fromRGBO(255, 255, 255, 0.18),
          hintText: label.toUpperCase(),
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
