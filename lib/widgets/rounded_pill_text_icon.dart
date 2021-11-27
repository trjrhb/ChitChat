import 'package:flutter/material.dart';
import 'package:chit_chat/assets/colors.dart';

class RoundedPillTextIcon extends StatefulWidget {
  final String text;
  final Icon icon;
  final Color color, iconColor;
  final double width, height;
  const RoundedPillTextIcon(this.text, this.icon, this.color, this.iconColor,
      {this.width = 180, this.height = 45});

  @override
  _RoundedPillTextIconState createState() => _RoundedPillTextIconState();
}

class _RoundedPillTextIconState extends State<RoundedPillTextIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // Create bounding box
        height: widget.height,
        width: widget.width,
        // Set Background color and edge roundness
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: const BorderRadius.all(Radius.circular(25.0))),
        child: Row(
            // Draws an icon and text to the screen
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                widget.icon.icon,
                color: widget.iconColor,
                size: 40,
              ),
              SizedBox(
                width: (widget.height - (widget.height / 1.5)) / 4,
              ),
              Text(
                widget.text,
                style: TextStyle(color: widget.iconColor, fontSize: 28),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: 9,
              ),
            ]));
  }
}
