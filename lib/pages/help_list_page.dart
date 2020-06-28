import 'package:flutter/material.dart';
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
                Padding(
                  padding: const EdgeInsets.all(16),
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
                              child: Image.asset('images/food.png'),
                            ),
                            Column(
                              children: [
                                Text('Título do pedido'),
                                Text('descrição do pedido')
                              ],
                            ),
                            Column(
                              children: [Icon(Icons.star)],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
