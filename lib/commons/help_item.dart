import 'package:flutter/material.dart';
import 'package:flutter_hackathon/commons/utils.dart';
import 'package:flutter_hackathon/styles/colors.dart';

class HelpItemWidget extends StatelessWidget {
  const HelpItemWidget({
    Key key,
    this.label,
    this.description,
    this.type,
    this.points = 'New Mission',
  }) : super(key: key);

  final String label;
  final String description;
  final String type;
  final String points;

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
                    getImagePath(type),
                    width: 48,
                    height: 48,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label.toUpperCase(),
                        style: TextStyle(
                            color: ColorStyles.primaryTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          description.toUpperCase(),
                          style: TextStyle(
                              color: ColorStyles.primaryTextColor,
                              fontSize: 12),
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
                        size: 36,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        points,
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
