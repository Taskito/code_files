import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/layout/layout%20copy.dart';
class WelcomeBack extends StatelessWidget {
  const WelcomeBack({super.key});
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05), ),
        child: Column(children: [
          Image.asset(
            "assets/images/welcome.jpg",
            width: Dimensions.getHeight(0.6),
          ),
          SizedBox(height: Dimensions.getHeight(0.1)),
          const Text(
            "Welcome back!\nYour account is active now,\nAre you ready to start your journey?!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: mainPurple, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: Dimensions.getHeight(0.3)),
          MainBtnStyle(
            width: Dimensions.getHeight(0.17),
            customBorderRadius: 10,
            text: "Continue",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MySaller(ind: 0, page: 0),));
            })
        ]),
            ),
      ));
  }
}
