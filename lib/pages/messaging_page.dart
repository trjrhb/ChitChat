import 'package:flutter/material.dart';
import 'package:chit_chat/assets/colors.dart';
import 'package:chit_chat/widgets/gradient_background.dart';
import 'package:chit_chat/widgets/rounded_textbox_input.dart';
import 'package:chit_chat/widgets/rounded_rect.dart';
import 'package:chit_chat/widgets/rounded_pill_text_icon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({Key? key}) : super(key: key);

  @override
  _MessagingPageState createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Stack(children: <Widget>[
          const GradientBackground(),
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    RoundedPillTextIcon('1,500,000', Icon(Icons.bolt),
                        AppColors.buttonColor, AppColors.yellow),
                    RoundedPillTextIcon('2:34', Icon(Icons.schedule),
                        AppColors.buttonColor, AppColors.softPurple)
                  ],
                ),
                SizedBox(height: 10),
                Container(
                    width: 385,
                    height: 300,
                    decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25.0)))),
                RoundedTextboxInput()
              ],
            ),
          )
        ]));
  }
}
