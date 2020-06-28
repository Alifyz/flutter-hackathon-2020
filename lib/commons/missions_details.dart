import 'package:flutter/material.dart';
import 'package:flutter_hackathon/pages/help_list_page.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';

class MissionDetailsOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/city.png'),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Center(
              child: Text(
                'Everything was going well, until a new virus started to spread.',
                style: TypographyStyle.textTitleTheme,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MissionDetailsTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/homeless.png'),
          Container(
            child: Center(
              child: Text(
                'People got really sick, the economy was shattered.',
                style: TypographyStyle.textTitleTheme,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MissionDetailsThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/help.png'),
          Container(
            child: Center(
              child: Text(
                'Now, people are jobless, and need basic things like food, medicine and clothe.',
                style: TypographyStyle.textTitleTheme,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MissionDetaisFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo-min.png',
                width: 389,
                height: 283,
              ),
              Text(
                'Help us to change this, Welcome to the resistence!',
                style: TypographyStyle.textTitleTheme,
              ),
              SizedBox(
                height: 48,
              ),
              Container(
                height: 48,
                width: 248,
                child: FuturisticButton(
                  label: 'START',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HelpListPage()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FuturisticButton extends StatelessWidget {
  const FuturisticButton({
    Key key,
    this.label,
    this.onTap,
  }) : super(key: key);

  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(
              color: ColorStyles.lighBlue,
            ),
            gradient: LinearGradient(
              colors: [ColorStyles.lightPurple, ColorStyles.backgroundColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                label.toUpperCase(),
                style: TypographyStyle.textTitleTheme.copyWith(fontSize: 18),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
