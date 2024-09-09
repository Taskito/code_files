import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
 

final String imagePath;
  final String title;
  final String description;

  const CardDesign({super.key, 
    required this.imagePath,
    required this.title,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
   
                      height: MediaQuery.sizeOf(context).height * 0.15,
      child: (
        Card(
          shape: RoundedRectangleBorder(
       
        borderRadius: BorderRadius.circular(5.0), // Set the border radius for rounded corners
      ),
                      
            color: Colors.white,
            margin: EdgeInsets.all(2),
            child: 
            Container(
             
              padding: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height*0.1,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                        Text(description,style: TextStyle(fontSize: 11),),
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
                                      height:
                                          MediaQuery.sizeOf(context).height ,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
            ),
      
                ],
              ),
            )
            
            
            // ListTile(
              
            // onTap: (){
      
            //   },
              
            // trailing: SizedBox(
            //   height: MediaQuery.sizeOf(context).height,
            //   child: ClipRRect(
                
            //                         borderRadius: const BorderRadius.all(
            //                            Radius.circular(10),
            //                           ),
            //                         child: Image.asset(
            //                           imagePath,
            //                           width: MediaQuery.sizeOf(context).width / 4,
            //                           height:
            //                               MediaQuery.sizeOf(context).height ,
            //                           fit: BoxFit.cover,
            //                         ),
            //                       ),
            // ),
            // title: Text(title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            // subtitle: Text(description,style: TextStyle(fontSize: 12),),
      
            // )
       
        )
      ),
    );
  }
}