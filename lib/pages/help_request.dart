import 'package:flutter/material.dart';
import 'package:flutter_hackathon/commons/custom_text_field.dart';
import 'package:flutter_hackathon/styles/colors.dart';
import 'package:flutter_hackathon/styles/text.dart';

class HelpRequestPage extends StatefulWidget {
  @override
  _HelpRequestPageState createState() => _HelpRequestPageState();
}

class _HelpRequestPageState extends State<HelpRequestPage> {
  final requestType = ['COMIDA', 'ROUPAS', 'MEDICAMENTOS'];
  String requestValue = 'COMIDA';

  final requestTypeIcon = [
    'images/food.png',
    'images/food.png',
    'images/food.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 48, left: 32, right: 32),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'NOVO PEDIDO DE SOCORRO',
                style: TypographyStyle.textTitleTheme,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(value: false, onChanged: (value) {}),
                  Text(
                    'O Pedido é para outra pessoa'.toUpperCase(),
                    style: TextStyle(color: ColorStyles.primaryTextColor),
                  )
                ],
              ),
              FormDivider(),
              CustomTextField(
                label: 'Título do pedido',
              ),
              CustomTextField(
                label: 'Descrição do pedido',
                lines: 4,
              ),
              SizedBox(
                height: 16,
              ),
              FormDivider(),
              CustomTextField(
                label: 'nome',
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: ColorStyles.primaryTextColor,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.18),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        'images/food.png',
                        color: ColorStyles.primaryTextColor,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    Expanded(
                      child: DropdownButtonFormField(
                          iconEnabledColor: ColorStyles.primaryTextColor,
                          iconDisabledColor: ColorStyles.primaryTextColor,
                          focusColor: Color.fromRGBO(255, 255, 255, 0.83),
                          dropdownColor: ColorStyles.backgroundColor,
                          style: TextStyle(color: ColorStyles.primaryTextColor),
                          value: requestValue,
                          items: requestType
                              .map((e) => DropdownMenuItem<String>(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              requestValue = value;
                            });
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FormDivider extends StatelessWidget {
  const FormDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color.fromRGBO(255, 255, 255, 0.6),
      thickness: 1.5,
    );
  }
}
