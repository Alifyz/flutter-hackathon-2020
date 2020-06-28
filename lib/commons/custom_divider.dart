import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color.fromRGBO(255, 255, 255, 0.6),
      thickness: 1.5,
    );
  }
}
