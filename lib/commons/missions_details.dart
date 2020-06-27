import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/text.dart';

class MissionDetailsOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'Estava tudo indo bem, Até que um novo vírus surgiu Ele adoeceu e matou milhares de pessoas no mundo todo',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    );
  }
}

class MissionDetailsTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'Com a economia abalada, muitos passam necessidade de coisas muito básicas',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    );
  }
}

class MissionDetailsThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'E foi aí que surgiu uma esperança, começamos a cuidar melhor uns dos outros e formar alianças',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    );
  }
}

class MissionDetaisFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'Seja bem vindo à Resistência',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    );
  }
}
