import 'package:flutter/material.dart';
import 'package:chit_chat/widgets/header_text.dart';
import 'package:chit_chat/widgets/rounded_rectangle_text_btn.dart';
import 'package:chit_chat/assets/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // 392
    double screenHeight = MediaQuery.of(context).size.height; // 781

    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(
            child: Column(children: <Widget>[
          SizedBox(height: screenHeight * 0.03),
          HeaderText("chit", 360, 130),
          HeaderText("chat", 360, 130),
          SizedBox(height: screenHeight * 0.013),
          const Expanded(
            child: SizedBox(
              width: 100,
            ),
          ),
          RoundedRectTextButton(
            "Start Session".toUpperCase(),
            AppColors.buttonColor,
            '',
            width: screenWidth * 0.84,
          ),
          SizedBox(height: screenHeight * 0.025),
        ])));
  }
}
