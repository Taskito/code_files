import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/core/helpers/dimensions.dart';

class IdVerification extends StatelessWidget {
  const IdVerification({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: Dimensions.getWidth(0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Time To verify Your Identity", style: TextStyle(color: mainPurple, fontWeight: FontWeight.bold, fontSize: 25),),
              SizedBox(height: Dimensions.getHeight(0.1)),
              Center(
                child: Image.asset("assets/images/ID_card.png", width: Dimensions.getWidth(0.6),),
              ),
              SizedBox(height: Dimensions.getHeight(0.05)),
              Text("Please ensure that your national ID meets the following criteria:", style: TextStyle(color: mainPurple, fontWeight: FontWeight.bold, fontSize: 22),),
              Text("\n• It is well-lit and clear to read.\n• It is fully inside the frame and not clipped.", style: TextStyle(color: mainPurple, fontSize: 20),),
              SizedBox(height: Dimensions.getHeight(0.1),),
              Center(
                child: MainBtnStyle(text: "Continue", onPressed: (){}, CustomBorderRadius: 10,),
              )
            ],
            ),
        ),
      ),
    );
  }
}