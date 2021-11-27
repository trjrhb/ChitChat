import 'package:flutter/material.dart';
import 'package:chit_chat/assets/colors.dart';
import 'package:chit_chat/widgets/rounded_rect.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class StartSessionButton extends StatefulWidget {
  const StartSessionButton(this.text, this.color, this.page,
      {this.width = 350, this.height = 70});

  final String text, page;
  final Color color;
  final double width, height;

  @override
  _StartSessionButtonState createState() => _StartSessionButtonState();
}

class _StartSessionButtonState extends State<StartSessionButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Bounding box created
      height: widget.height,
      width: widget.width,
      child: Stack(
        // Stack the text on top of the background
        children: <Widget>[
          // Create the rounded rectangle background
          RoundedRect(widget.color, widget.width, widget.height),
          // Center and create the text
          Center(
            child: TextButton(
              // Text creation
              style: TextButton.styleFrom(
                primary: AppColors.backgroundColor,
                textStyle: TextStyle(
                    fontFamily: 'OpenSans', fontSize: widget.height / 2),
              ),
              // Takes the user to the page name that is passed in if it exist
              // in routes, or can act as a 'Back' Button if "pop" is passed in
              // Note: On Android, a there exist a built in back button at the
              // base of the phone.
              onPressed: () {
                Navigator.pushNamed(context, '/' + widget.page);
                //findSession();
              },
              child: Text(widget.text),
            ),
          )
        ],
      ),
    );
  }
}
