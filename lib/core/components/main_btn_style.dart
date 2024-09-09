import 'package:flutter/material.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class MainBtnStyle extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double CustomBorderRadius;
  const MainBtnStyle({
      Key? key,
      required this.text,
      required this.onPressed,
      this.color = mainPurple,
      this.CustomBorderRadius = 0
      }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: color,
            padding: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.35)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(CustomBorderRadius))),
        child: Text(text));
  }
}
