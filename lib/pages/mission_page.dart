import 'package:flutter/material.dart';
import 'package:flutter_hackathon/commons/help_item.dart';
import 'package:flutter_hackathon/models/application_model.dart';
import 'package:flutter_hackathon/models/request_model.dart';
import 'package:flutter_hackathon/styles/text.dart';

class MissionPage extends StatelessWidget {
  const MissionPage({
    Key key,
    @required ApplicationModel appState,
  })  : _appState = appState,
        super(key: key);

  final ApplicationModel _appState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'MISSION HISTORY',
                style: TypographyStyle.textTitleTheme,
              ),
            ),
            Text(
              'PEOPLE THAT YOU HELPED!',
              style: TypographyStyle.defaultTextTheme,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _appState.completedMissions.length,
                itemBuilder: (context, index) {
                  RequestModel currentMission =
                      _appState.completedMissions[index];
                  return HelpItemWidget(
                    type: currentMission.type,
                    label: currentMission.title,
                    description: currentMission.description,
                    points: '25 PTS',
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
