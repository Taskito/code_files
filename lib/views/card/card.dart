import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/sallerList/saller_list.dart';

class CardDesign extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String service_id;

  const CardDesign({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.service_id,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;  // Use MediaQuery.of(context).size to get screen size

    return SizedBox(
      height: screenSize.height * 0.15,  // Use the correct size method
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SallerList(service_id: service_id),
          ),
        ),
        child: Card(
          // elevation: 0.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(
              color: Color.fromRGBO(248, 249, 250, 1),
              width: 1,  // Set the border radius for rounded corners
            ),
          ),
          color: Colors.white,
          margin: const EdgeInsets.all(2),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: screenSize.width,  // Use the correct size method
            height: screenSize.height * 0.1,
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
                        style: const TextStyle(
                          fontSize: 13, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image.asset(
                      imagePath,  // Use dynamic image path instead of hardcoded path
                      width: screenSize.width / 3,
                      height: screenSize.height,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
