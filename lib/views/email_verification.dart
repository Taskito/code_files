import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/components/main_txt_field.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/core/helpers/dimensions.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController messageController = TextEditingController();
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/messages_bro.png",
                  width: Dimensions.getWidth(0.6),
                ),
              ),
              SizedBox(height: Dimensions.getHeight(0.05)),
              const Text(
                "Please provide your email address so we can send you the activation confirmation once your ID is verified",
                style: TextStyle(
                    color: mainPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: Dimensions.getHeight(0.02),
              ),
              Form(
                  child: MainTxtField(
                      hintText: "Enter your Email",
                      controller: messageController)),
              SizedBox(
                height: Dimensions.getHeight(0.1),
              ),
              Center(
                child: MainBtnStyle(
                  width: Dimensions.getHeight(0.35),
                  text: "Continue",
                  onPressed: () {},
                  customBorderRadius: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
