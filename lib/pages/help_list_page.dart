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
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<ApplicationModel>(context);
    return Scaffold(
        backgroundColor: ColorStyles.backgroundColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HelpRequestPage()));
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
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
        ));
  }
}
