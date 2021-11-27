import 'package:flutter/material.dart';
import 'package:chit_chat/assets/colors.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment
              .bottomRight, // 10% of the width, so there are ten blinds.
          colors: <Color>[
            AppColors.screenGradient1,
            AppColors.screenGradient2
          ], // red to yellow
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
    );
  }
}
