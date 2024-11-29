import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

class OnlineServies extends StatelessWidget {

  final List<QueryDocumentSnapshot> services;

  const OnlineServies({super.key, required this.services});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: (
        ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            return(
              CardDesign(
                description:services[index]["service_description"] ,
                imagePath:"assets/images/web-design.png",
                title:  services[index]["service_name"],
                service_id: services[index].id ,
                )
            );
          
        },)
      ),
    );
  }
}