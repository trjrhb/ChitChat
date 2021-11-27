import 'package:flutter/material.dart';
import 'package:chit_chat/assets/colors.dart';

class RoundedTextboxInput extends StatefulWidget {
  //final double width, height;
  const RoundedTextboxInput();

  @override
  _RoundedTextboxInputState createState() => _RoundedTextboxInputState();
}

class _RoundedTextboxInputState extends State<RoundedTextboxInput> {
  TextEditingController messageController = TextEditingController();
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          child: TextField(
        controller: messageController,
        onChanged: (text) {
          setState(() {
            message = text;
            //you can access messageController in its scope to get
            // the value of text entered as shown below
            //message = messageController.text;
          });
        },
      )),
      Container(
        margin: EdgeInsets.all(20),
        child: Text(message),
      )
    ]);
  }
}
