import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';
import 'package:flutter_hackathon/styles/theme.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final missionDetails = [
    Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'Estava tudo indo bem, Até que um novo vírus surgiu Ele adoeceu e matou milhares de pessoas no mundo todo',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'Com a economia abalada, muitos passam necessidade de coisas muito básicas',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'E foi aí que surgiu uma esperança, começamos a cuidar melhor uns dos outros e formar alianças',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        child: Center(
          child: Text(
            'Seja bem vindo à Resistência',
            style: TypographyStyle.textTitleTheme,
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hackathon',
      theme: ThemeStyle.mainTheme,
      home: Scaffold(
        backgroundColor: ColorStyles.backgroundColor,
        body: Swiper(
          pagination: SwiperPagination(),
          control: SwiperControl(),
          itemBuilder: (context, index) {
            return missionDetails[index];
          },
          itemCount: 4,
          viewportFraction: 0.8,
          scale: 0.9,
        ),
      ),
    );
  }
}
