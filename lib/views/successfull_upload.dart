import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class SuccessfullUpload extends StatelessWidget {
  const SuccessfullUpload({super.key});
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05), ),
      child: Column(children: [
        Icon(
          Icons.check_circle,
          color: Colors.green,
          size: Dimensions.getWidth(0.5),
        ),
        SizedBox(height: Dimensions.getHeight(0.1)),
        const Text(
          "Your ID has been successfully uploaded. Please wait for our response via email. Thank you for your patience!",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: mainPurple, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(height: Dimensions.getHeight(0.3)),
        MainBtnStyle(
          width: Dimensions.getHeight(0.35),
          text: "Continue",
          onPressed: () {})
      ]),
    ));
  }
}
