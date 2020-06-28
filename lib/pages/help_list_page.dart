import 'package:flutter/material.dart';
import 'package:flutter_hackathon/pages/help_request.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';

class HelpListPage extends StatefulWidget {
  @override
  _HelpListPageState createState() => _HelpListPageState();
}

class _HelpListPageState extends State<HelpListPage> {
  @override
  Widget build(BuildContext context) {
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
                  'PEDIDOS DE SOCORRO',
                  style: TypographyStyle.textTitleTheme,
                ),
                HelpItemWidget()
              ],
            ),
          ),
        ));
  }
}

class HelpItemWidget extends StatelessWidget {
  const HelpItemWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.18),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        height: 96,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/food.png',
                    width: 48,
                    height: 48,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Título do pedido'.toUpperCase(),
                        style: TextStyle(color: ColorStyles.primaryTextColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'Resumo do pedido aqui em duas linhas bem rápido, sério msm',
                          style: TextStyle(color: ColorStyles.primaryTextColor),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '3 dias atrás',
                        style: TextStyle(color: ColorStyles.primaryTextColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
