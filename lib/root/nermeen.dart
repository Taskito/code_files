import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/sallerList/saller_list.dart';


class CardDesign extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CardDesign({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: InkWell(
        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SallerList(),)),
        child: (Card(
          // elevation: 0.5,
            shape: RoundedRectangleBorder(
            
              borderRadius: BorderRadius.circular(
                  4.0),
              side: BorderSide(
                color:Color.fromRGBO(248, 249, 250, 1),
                width: 1
              ) // Set the border radius for rounded corners
            ),
            color: Colors.white,
            margin: EdgeInsets.all(2),
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image.asset(
                        imagePath,
                        width: MediaQuery.sizeOf(context).width / 3,
                        height: MediaQuery.sizeOf(context).height,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ))),
      ),
    );
  }
}
