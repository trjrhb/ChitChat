import 'package:flutter/material.dart';
import 'package:chit_chat/assets/colors.dart';
import 'package:chit_chat/widgets/rounded_rect.dart';

class RoundedRectTextButton extends StatelessWidget {
  RoundedRectTextButton(this.text, this.color, this.page,
      {this.width = 350, this.height = 70});

  final String text, page;
  final Color color;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Bounding box created
      height: height,
      width: width,
      child: Stack(
        // Stack the text on top of the background
        children: <Widget>[
          // Create the rounded rectangle background
          RoundedRect(color, width, height),
          // Center and create the text
          Center(
            child: TextButton(
              // Text creation
              style: TextButton.styleFrom(
                primary: AppColors.backgroundColor,
                textStyle:
                    TextStyle(fontFamily: 'OpenSans', fontSize: height / 2),
              ),
              // Takes the user to the page name that is passed in if it exist
              // in routes, or can act as a 'Back' Button if "pop" is passed in
              // Note: On Android, a there exist a built in back button at the
              // base of the phone.
              onPressed: () {
                if (page.toLowerCase() == "pop") {
                  Navigator.pop(context);
                } else {
                  Navigator.pushNamed(context, '/' + page);
                }
              },
              child: Text(text),
            ),
          )
        ],
      ),
    );
  }
}
