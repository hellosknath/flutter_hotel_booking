// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_booking_app/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigTxt;
  final String smallTxt;
  const AppDoubleTextWidget({
    Key? key,
    required this.bigTxt,
    required this.smallTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // heading
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigTxt,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
          },
          child: Text(
            smallTxt,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
