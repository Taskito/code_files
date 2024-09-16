import 'package:flutter/material.dart';
import 'package:taskito/core/helpers/dimensions.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "About us",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05)),
          padding: EdgeInsets.all(Dimensions.getWidth(0.05)),
          alignment: Alignment.topLeft,
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 20, color: Colors.black), 
              children: <TextSpan>[
                TextSpan(
                  text: "At Taskito, ",
                  style: TextStyle(fontWeight: FontWeight.bold), 
                ),
                TextSpan(
                  text: "we connect skilled individuals with those seeking their services, whether it's an online talent like logo design or an offline service like computer repair.",
                  style: TextStyle(fontWeight: FontWeight.normal), 
                ),
                TextSpan(
                  text: "\n\nOur mission, ",
                  style: TextStyle(fontWeight: FontWeight.bold), 
                ),
                TextSpan(
                  text: "is to empower people to invest in and develop their skills, transforming them into valuable opportunities for income. We offer a reliable platform where service providers can showcase their talents and clients can easily find the expertise they need.",
                  style: TextStyle(fontWeight: FontWeight.normal)
                  ),
                TextSpan(
                  text: "\n\nOur vision, ",
                  style: TextStyle(fontWeight: FontWeight.bold), 
                ),
                TextSpan(
                  text : "is to help everyone with a skill succeed by offering their services, fostering growth, and building trust between users. Join",
                  style: TextStyle(fontWeight: FontWeight.normal)
                  ),
                  TextSpan(
                    text: " [Taskito] ",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: " today to start investing in your talents or find the perfect service for your needs.",
                    style: TextStyle(fontWeight: FontWeight.normal)
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
