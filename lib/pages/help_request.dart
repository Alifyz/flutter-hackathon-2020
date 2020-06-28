import 'package:flutter/material.dart';
import 'package:flutter_hackathon/commons/custom_divider.dart';
import 'package:flutter_hackathon/commons/custom_text_field.dart';
import 'package:flutter_hackathon/commons/missions_details.dart';
import 'package:flutter_hackathon/commons/utils.dart';
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
    'images/medicine.png',
    'images/clothe.png',
  ];

  bool isThirdPartyRequest = false;
  final requestDescription = [
    'O PEDIDO É PARA OUTRA PESSOA',
    'O PEDIDO É PARA MIM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Switch(
                        value: isThirdPartyRequest,
                        onChanged: (value) {
                          setState(() {
                            isThirdPartyRequest = value;
                          });
                        }),
                    Text(
                      isThirdPartyRequest
                          ? requestDescription[0]
                          : requestDescription[1],
                      style: TypographyStyle.defaultTextTheme,
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
                          getImagePath(requestValue),
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
                            style: TypographyStyle.defaultTextTheme
                                .copyWith(fontSize: 17),
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
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextField(
                  label: 'Endereço',
                  icon: Icon(
                    Icons.home,
                    color: ColorStyles.primaryTextColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextField(
                  label: 'Telefone',
                  icon: Icon(
                    Icons.phone,
                    color: ColorStyles.primaryTextColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorStyles.gray,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: FuturisticButton(
                        onTap: () {},
                        label: 'SAVE',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
