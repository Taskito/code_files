import 'package:flutter/material.dart';
import 'package:taskito/core/components/message_from.dart';
import 'package:taskito/core/components/message_to.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Chatting..", style: TextStyle(fontWeight: FontWeight.bold),),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05),),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/person.jpg",
                      width: Dimensions.getHeight(0.1),
                      height: Dimensions.getHeight(0.1),
                      fit: BoxFit.cover
                      )
                  ),
                  const Text("Sandra Medhat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                  ],
                )
              ),
              SizedBox(height: Dimensions.getHeight(0.02),),
                  const MessageFrom(
                    message: "Impusum for every thing and what about you and your family?",
                  ),
                  const MessageTo(message: "Yes you are right!")
                ],
              )
        ),
      ),
      bottomNavigationBar: Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(174, 158, 158, 158)),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                  color: mainGrey,
                  blurRadius: 6,
                  offset: Offset(3, 3)
                )]
              ),
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),

        height: Dimensions.getHeight(0.16),
        child: Column(
          children: [
            TextFormField(
                  controller: messageController,
                  decoration: const InputDecoration(
                    hintText: "Type a message",
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.01)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){},  icon: const Icon(Icons.add_circle_outline, color: mainPurple, size: 20)),
                    IconButton(onPressed: (){},  icon: const Icon(Icons.emoji_emotions, color: mainPurple, size: 20)),
                    IconButton(onPressed: (){},  icon: const Icon(Icons.photo, color: mainPurple, size: 20)),
                    IconButton(onPressed: (){},  icon: const Icon(Icons.camera_alt, color: mainPurple, size: 20)),
                    IconButton(onPressed: (){},  icon: const Icon(Icons.settings_voice_rounded, color: mainPurple, size: 20)),
                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.send, color: mainPurple, size: 20),)
              ],
            )
          ],
          ),
      ),
    );
  }
}