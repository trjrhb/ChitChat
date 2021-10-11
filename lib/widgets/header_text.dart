import 'package:flutter/material.dart';
import 'package:chit_chat/assets/colors.dart';

class HeaderText extends StatelessWidget {
  HeaderText(this.text, this.width, this.height);
  final double width, height;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, //180
      width: width, //360
      child: Stack(
        children: <Widget>[
          Center(
              child: Row(
            children: <Widget>[
              SizedBox(width: height * 0.00),
              Text(text.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: AppColors.softYellow,
                      fontSize: 120),
                  textAlign: TextAlign.center)
            ],
          )),
          Center(
              child: Row(
            children: <Widget>[
              SizedBox(width: height * 0.05),
              Text(text.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: AppColors.yellow,
                      fontSize: 120),
                  textAlign: TextAlign.center)
            ],
          )),
          Center(
              child: Row(children: <Widget>[
            SizedBox(width: height * 0.10),
            Text(text.toUpperCase(),
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: AppColors.buttonColor,
                    fontSize: 120),
                textAlign: TextAlign.center)
          ]))
        ],
      ),
    );
  }
}
