import 'package:flutter/material.dart';
import 'package:flutter_hackathon/commons/help_item.dart';
import 'package:flutter_hackathon/models/application_model.dart';
import 'package:flutter_hackathon/models/request_model.dart';
import 'package:flutter_hackathon/pages/help_request.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';
import 'package:provider/provider.dart';

class HelpListPage extends StatefulWidget {
  @override
  _HelpListPageState createState() => _HelpListPageState();
}

class _HelpListPageState extends State<HelpListPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<ApplicationModel>(context);
    return Scaffold(
        backgroundColor: ColorStyles.backgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorStyles.backgroundColor,
          currentIndex: _currentPage,
          onTap: (page) {
            setState(() {
              _currentPage = page;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: ColorStyles.actionColor,
                ),
                title: Text('Help list',
                    style: TypographyStyle.defaultTextTheme.copyWith(
                      color: ColorStyles.actionColor,
                    ))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: ColorStyles.actionColor,
                ),
                title: Text('Missions',
                    style: TypographyStyle.defaultTextTheme.copyWith(
                      color: ColorStyles.actionColor,
                    ))),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.verified_user,
                color: ColorStyles.actionColor,
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Profile',
                    style: TypographyStyle.defaultTextTheme.copyWith(
                      color: ColorStyles.actionColor,
                    )),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HelpRequestPage()));
          },
          child: Icon(Icons.add),
          backgroundColor: ColorStyles.gray,
        ),
        body: MainContent(
          appState: appState,
          page: _currentPage,
        ));
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key key,
    @required this.appState,
    this.page,
  }) : super(key: key);

  final ApplicationModel appState;
  final int page;

  @override
  Widget build(BuildContext context) {
    final _appState = Provider.of<ApplicationModel>(context);

    if (page == 0) {
      if (appState.requests.isEmpty) {
        return EmptyState();
      } else {
        return HelpListWidget(appState: appState);
      }
    } else if (page == 1) {
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
    } else {
      return ProfileWidget();
    }
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 156,
              height: 156,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(96),
                  border: Border.all(
                    color: ColorStyles.actionColor,
                  )),
              child: Image.asset('images/avatar.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'HELPER 101',
                style: TypographyStyle.textTitleTheme
                    .copyWith(color: ColorStyles.actionColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 56,
                decoration: BoxDecoration(color: ColorStyles.lightWhite),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.verified_user,
                    ),
                  ),
                  Text(
                    'PROFILE',
                    style: TypographyStyle.textTitleTheme
                        .copyWith(color: ColorStyles.actionColor, fontSize: 21),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 56,
                decoration: BoxDecoration(color: ColorStyles.lightWhite),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.verified_user,
                    ),
                  ),
                  Text(
                    'HELPS SENT',
                    style: TypographyStyle.textTitleTheme
                        .copyWith(color: ColorStyles.actionColor, fontSize: 21),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 56,
                decoration: BoxDecoration(color: ColorStyles.lightWhite),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.verified_user,
                    ),
                  ),
                  Text(
                    'LOG OUT',
                    style: TypographyStyle.textTitleTheme
                        .copyWith(color: ColorStyles.actionColor, fontSize: 21),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EmptyState extends StatelessWidget {
  const EmptyState({
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
            'Nothing found, try to add a new help request',
            style: TypographyStyle.defaultTextTheme.copyWith(fontSize: 21),
          )
        ],
      ),
    );
  }
}

class HelpListWidget extends StatelessWidget {
  const HelpListWidget({
    Key key,
    @required this.appState,
  }) : super(key: key);

  final ApplicationModel appState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'HELP LIST',
              style: TypographyStyle.textTitleTheme,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: appState.requests.length,
                  itemBuilder: (context, index) {
                    RequestModel currentRequest =
                        appState.getCurrentRequest(index);
                    return HelpItemWidget(
                      label: currentRequest.title,
                      description: currentRequest.description,
                      type: currentRequest.type,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
