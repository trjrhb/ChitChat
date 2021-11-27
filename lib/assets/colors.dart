import 'package:flutter/material.dart';

//How to do transparency
//first two chars of hexcode and their values i.e. for 80% 0xCCFFFFFF
// 100% - FF
// 95% - F2
// 90% - E6
// 85% - D9
// 80% - CC
// 75% - BF
// 70% - B3
// 65% - A6
// 60% - 99
// 55% - 8C
// 50% - 80
// 45% - 73
// 40% - 66
// 35% - 59
// 30% - 4D
// 25% - 40
// 20% - 33
// 15% - 26
// 10% - 1A
// 5% - 0D
// 0% - 00

class AppColors {
  // DEPRECATED DO NOT USE THESE COLOR NAMES
  static const vibrantRed = Color(0xFFFF2323);
  static const red = Color(0xFFFF5757);
  static const softRed = Color(0xFFFF8383);

  static const vibrantOrange = Color(0xFFFF7A00);
  static const orange = Color(0xFFFF8514);
  static const softOrange = Color(0xFFFFA048);

  static const vibrantYellow = Color(0xFFFFA100);
  static const yellow = Color(0xFFFDB221);
  static const softYellow = Color(0xFFFFCC59);

  static const vibrantGreen = Color(0xFF68C242);
  static const green = Color(0xFF7ED957);
  static const softGreen = Color(0xFFA5EF87);

  static const vibrantBlue = Color(0xFF00A1FF);
  static const blue = Color(0xFF38B6FF);
  static const softBlue = Color(0xFF8CCAF7);

  static const vibrantPurple = Color(0xFF7631FF);
  static const purple = Color(0xFF8C52FF);
  static const softPurple = Color(0xFFA980FA);

  static const highlight = Color(0x40FFFFFF); //(25% Opacity)
  static const shadow = Color(0x403F3F3F); //(25% Opacity)

  static const backgroundColor = Color(0xFFCFD0D0); //(Background/Text)
  static const buttonColor = Color(0xFF1B1B1B); //(Buttons/Base/LargeText)

  static const screenGradient1 = Color(0xFFFF5757); // Top left color
  static const screenGradient2 = Color(0xFFCB6CE6); // Bottom right color
}
