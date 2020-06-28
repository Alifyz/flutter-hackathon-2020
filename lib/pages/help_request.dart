import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';

class HelpRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'NOVO PEDIDO DE SOCORRO',
                style: TypographyStyle.textTitleTheme,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(value: false, onChanged: (value) {}),
                  Text(
                    'O Pedido é para outra pessoa'.toUpperCase(),
                    style: TextStyle(color: ColorStyles.primaryTextColor),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Divider(
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                  thickness: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
