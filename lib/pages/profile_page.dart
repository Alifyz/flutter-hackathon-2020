import 'package:flutter/material.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
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
                    child: Image.asset('images/profile.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'PROFILE',
                      style: TypographyStyle.textTitleTheme.copyWith(
                          color: ColorStyles.actionColor, fontSize: 21),
                    ),
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
                      child: Image.asset('images/contribution.png')),
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
                    child: Image.asset('images/logout.png'),
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
