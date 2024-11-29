import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';

class NotifactionCard extends StatelessWidget {


 
  final String name;
  final String message;
  final String time;

  const NotifactionCard({super.key, 
  
    required this.name,
    required this.message,
    required this.time,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top :3),
      padding: const EdgeInsets.all(5),
      
      // shape: RoundedRectangleBorder(
            
      //         borderRadius: BorderRadius.circular(
      //             4.0),
      //         side: BorderSide(
      //           color:Color.fromRGBO(248, 249, 250, 1),
      //           width: 0
      //         ) // Set the border radius for rounded corners
      //       ),rgba(244, 240, 253, 1)

      color: const Color.fromARGB(255, 244, 240, 253),
      child: ListTile(
        isThreeLine: true,
        
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(message),  
          Text(time),
          const Text("See Profile",style: TextStyle(color: Colors.blue),)
          ],
        ) ,
        trailing: const CircleAvatar(
          radius: 5,
          backgroundColor: mainPurple,
        ),
        onTap: () {
          // Handle tap
        },
      ),
    );
  }
}