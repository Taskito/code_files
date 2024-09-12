import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';

class DealingCard extends StatelessWidget {
  final String saller_name;
  final int saller_rating;
  final int qun;
  final int price;
  final String servies_type;
  final String state;
   DealingCard({
      required this.saller_name,
      required this.saller_rating,
    required this.qun,
    required this.price,
    required this.servies_type,
    required this.state
   });

  @override
  Widget build(BuildContext context) {
    return (
      Card(
        // margin:EdgeInsets.all(5),
        elevation: 0,
        shape: RoundedRectangleBorder(
            
              borderRadius: BorderRadius.circular(
                  4.0),
              side: BorderSide(
                color:Color.fromRGBO(235, 235, 235, 1),
                width: 1
              ) // Set the border radius for rounded corners
            ),
            color: Colors.white,
            margin: EdgeInsets.all(5),
          child: Padding(padding: EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Last Deal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  SizedBox(height: 5,),
                  Text("order :${servies_type}",style: TextStyle(color: textgrey,fontSize: 12),),
                  SizedBox(height: 5,),
                  Text("Qty: ${qun}, Price: \$ ${price}, Status: ${state}",style: TextStyle(color: textgrey,fontSize: 12),),
                  SizedBox(height: 5,),
                  Text("by :${saller_name}",style: TextStyle(color: textgrey,fontSize: 12),),
                  SizedBox(height: 5,), 
                  Text("Review",style: TextStyle(color: Colors.blue))
                  // TextButton(onPressed: (){}, child: Text("Review",style: TextStyle(color: Colors.blue),),style: TextButton.styleFrom(padding: EdgeInsets.all(value)),),
                ],
              )
              ,Column(
                children: [
                        CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueAccent,
              child: Image.asset("assets/images/user.png")
            ),
              Row(
                    children: List.generate(5, (index) {
                    return Icon(
      index < saller_rating ? Icons.star : Icons.star_border,
      color: Colors.amber,
      size: 16,
    );
                    }),
                    
                  ),
                ],
              )
            ],
          ),),

      )
    );
  }
}