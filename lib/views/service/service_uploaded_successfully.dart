import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class ServiceUploadedSuccessfully extends StatelessWidget {
  const ServiceUploadedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Add a service", style: TextStyle(fontWeight: FontWeight.bold),),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05)),
          alignment: Alignment.center,
          child: Column(
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: Dimensions.getWidth(0.3),),
              const Text("Service Uploaded successfully", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              const Text("Good job! After Finishing 5 services we will not\n take a commission in th 6th service.", style: TextStyle(fontSize: 17, ),),
                            // details box width divider
              Container(
                width: Dimensions.getWidth(0.9),
                height: Dimensions.getHeight(0.25),
                margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05), vertical: Dimensions.getHeight(0.02)),
                padding: EdgeInsets.all(Dimensions.getWidth(0.05)),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(52, 206, 205, 205),
                  border: Border.all(color: mainGrey),
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: const [BoxShadow(color: Color.fromARGB(83, 158, 158, 158), blurRadius: 2, )]
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal", style: TextStyle(fontSize: 20),),
                        Text("700 EGP", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Commision (% 15)", style: TextStyle(fontSize: 20),),
                        Text("105 EGP", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const Divider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Card", style: TextStyle(fontSize: 20),),
                        Text("********545", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total", style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(Dimensions.getWidth(0.01)),
                              margin: EdgeInsets.all(Dimensions.getWidth(0.01)),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(135, 94, 212, 98),
                                borderRadius: BorderRadius.circular(5)
                                ),
                              child: const Text("Success", style: TextStyle(color: Color.fromARGB(255, 60, 143, 63)),),
                            ),
                        Text("595 EGP", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 46, 105, 48)),)
                          ],
                        )
                      ],
                    ),
                  ],),
              ),
              const Text("How was you experience? ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              const RatingStars(
                value: 5,
                starCount: 5,
                valueLabelVisibility: false,
              ),
              const SizedBox(height: 20,),
              MainBtnStyle(text: "Back to the home", onPressed: (){}, width: Dimensions.getWidth(0.3), customBorderRadius: 10,)
            ],),),),
    );
  }
}