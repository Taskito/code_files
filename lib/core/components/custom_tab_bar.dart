import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;
  final List<Map<String, String>> services = [
    {
      "image":"assets/images/person.jpg",
      "name":"Logos",
      "description":"Description"
    },
    {
      "image":"assets/images/person.jpg",
      "name":"Logos",
      "description":"Description"
    },
    {
      "image":"assets/images/person.jpg",
      "name":"Logos",
      "description":"Description"
    }
  ];
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Column(
      children: [Row(
        children: [
          Column(
            children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Text(
                "Services",
                style: TextStyle(
                  color: (selectedIndex == 0) ? mainPurple:Colors.black,
                  fontSize: 20,
                  fontWeight: (selectedIndex == 0) ? FontWeight.bold : FontWeight.normal
                ),
              ),
            ),
            if(selectedIndex == 0)
            Container(
              color: mainPurple,
              height: 2,
              width: 60,
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),
            ],
          ),
          Column(
            children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Text(
                "Contact",
                style: TextStyle(
                  color: (selectedIndex == 1) ? mainPurple:Colors.black,
                  fontSize: 20,
                  fontWeight: (selectedIndex == 1) ? FontWeight.bold : FontWeight.normal
                ),
              ),
            ),
            if(selectedIndex == 1)
              Container(
                color: mainPurple,
                height: 2,
                width: 60,
                margin: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ],
          ),
        ],
      ),
      (selectedIndex == 0)?
      // Expanded(
        // child: GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2
        //     ),
        //     itemBuilder: (context, value){
        //       return Column(children: [
        //         Text(services[1]["name"]!)
        //       ],);
        //     }),)
      Text("Services")
      :
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "chat");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
              height: Dimensions.getHeight(0.05),
              width: Dimensions.getWidth(0.8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: mainGrey,
              ),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Type a message", style: TextStyle(color: Colors.grey, fontSize: 15),),
                Icon(Icons.emoji_emotions, color: mainPurple, size: 20,)
                ]),
              
            ),
            Icon(Icons.send, color: mainPurple, size: 20,)
          ],
          ),
        )
      ],
    );
  }
}