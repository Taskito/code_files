
import 'package:flutter/material.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class MainBtnStyle extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double customBorderRadius;
  final double width; 
  const MainBtnStyle({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = mainPurple,
    this.customBorderRadius = 0,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: width),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(customBorderRadius),
        ),
      ),
      child: Text(text),
    );
  }
}
