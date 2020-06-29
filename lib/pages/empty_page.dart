import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/text.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/empty.png',
            width: 196,
            height: 196,
          ),
          Text(
            'Nothing found\ntry to add a new help request',
            textAlign: TextAlign.center,
            style: TypographyStyle.defaultTextTheme.copyWith(fontSize: 21),
          )
        ],
      ),
    );
  }
}
