import 'package:flutter/material.dart';

class RoundedRect extends StatelessWidget {
  RoundedRect(this.color, this.width, this.height, {this.radius = 15.0});

  final Color color;
  final double width, height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}
