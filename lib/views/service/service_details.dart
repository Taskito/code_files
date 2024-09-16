import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Service Details", style: TextStyle(fontWeight: FontWeight.bold),),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05)),
          padding: EdgeInsets.all(Dimensions.getWidth(0.05)),
          decoration: BoxDecoration(
            color: const Color.fromARGB(92, 236, 236, 236),
              border: Border.all(
              color: const Color.fromARGB(96, 158, 158, 158), width: 1),
              borderRadius: BorderRadius.circular(7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/person.jpg",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Najma Metwaly",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "A day ago",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(160, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 20,),
            Image.asset(
              "assets/images/bac_header.png",
              width: Dimensions.getWidth(0.9),
              height: Dimensions.getHeight(0.2),
              fit: BoxFit.cover,
              
            ),
            SizedBox(height: Dimensions.getHeight(0.02),),
            const Text(
              "Logo design",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
              "Taskito logo was one of the perfect logos that I have made before, thanks for every one that supports me and the gentle client! thanks so mush guys!",
              style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(height: Dimensions.getHeight(0.02),),
              // details box width divider
              Container(
                width: Dimensions.getWidth(0.7),
                height: Dimensions.getHeight(0.25),
                margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.1), vertical: Dimensions.getHeight(0.01)),
                padding: EdgeInsets.all(Dimensions.getWidth(0.05)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: mainGrey),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(color: Color.fromARGB(83, 158, 158, 158), blurRadius: 2, )]
                  ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.money_rounded, color: mainPurple, size: 25,),
                        Text("700 EGP", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.timelapse, color: mainPurple, size: 25,),
                        Text("3 - 4 Days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.payment, color: mainPurple, size: 25,),
                        Text("Vodafone Cash", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Divider()
                  ],),
              ),
              Center(
                child: MainBtnStyle(onPressed: (){}, text: "Get now!", width: Dimensions.getWidth(0.01), customBorderRadius: 5,),
              )
            ]
          )
        ),
      ),
    );
  }
}