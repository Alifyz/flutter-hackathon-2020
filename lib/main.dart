import 'package:flutter/material.dart';
import 'package:flutter_hackathon/commons/missions_details.dart';
import 'package:flutter_hackathon/models/application_model.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/theme.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final missionDetails = [
    MissionDetailsOne(),
    MissionDetailsTwo(),
    MissionDetailsThree(),
    MissionDetaisFour()
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ApplicationModel(),
      child: MaterialApp(
        title: 'Flutter Hackathon',
        theme: ThemeStyle.mainTheme,
        home: Scaffold(
          backgroundColor: ColorStyles.backgroundColor,
          body: Swiper(
            pagination: SwiperPagination(),
            itemBuilder: (context, index) {
              return missionDetails[index];
            },
            itemCount: 4,
            viewportFraction: 0.8,
            scale: 0.4,
          ),
        ),
      ),
    );
  }
}
