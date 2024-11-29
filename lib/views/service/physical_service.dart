import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

class PhysicalServies extends StatelessWidget {
     final List<QueryDocumentSnapshot> services;

  const PhysicalServies({super.key, required this.services});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 12,right: 12),
      child: (
        ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            return(
              CardDesign(
                description:services[index]["service_description"] ,
                imagePath: "assets/images/web-design.png",
                title:  services[index]["service_name"],
                service_id: services[index].id,
                )
            );
          
        },)
      ),
    );
  }
}