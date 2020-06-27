import 'package:flutter/material.dart';
import 'package:flutter_hackathon/pages/help_list_page.dart';
import 'package:flutter_hackathon/styles/colors.dart';
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
                'Seja bem vindo à Resistência',
                style: TypographyStyle.textTitleTheme,
              ),
              SizedBox(
                height: 48,
              ),
              Container(
                height: 48,
                width: 248,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HelpListPage()));
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                          color: ColorStyles.lighBlue,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            ColorStyles.lightPurple,
                            ColorStyles.backgroundColor
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'BORA LÁ',
                            style: TypographyStyle.textTitleTheme
                                .copyWith(fontSize: 18),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
