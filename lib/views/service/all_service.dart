import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

// class AllServies extends StatefulWidget {/
  // final List<Map<String, dynamic>> products;

  // const AllServies({required this.products});
  //  AllServies({super.key});
  
  // @override
  // State<AllServies> createState() => _AllServiesState();
// }

// class _AllServiesState extends State<AllServies> {
  // List<Map> products = [
  //   {
  //     'title': "Pet Grooming",
  //     "description": "Professional grooming services for your pet to ensure they look and feel their best.",
  //     "imagePath": "asset/images/bog.jpg"
  //   },
  // {
  //     'title': "Web Design",
  //     "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
  //     "imagePath": "asset/images/web-design.png"
  //   },
  //   {
  //     'title': "Pet Grooming",
  //     "description": "Professional grooming services for your pet to ensure they look and feel their best.",
  //     "imagePath": "asset/images/bog.jpg"
  //   },
  //   {
  //     'title': "Web Design",
  //     "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
  //     "imagePath": "asset/images/web-design.png"
  //   },
  //   {
  //     'title': "Pet Grooming",
  //     "description": "Professional grooming services for your pet to ensure they look and feel their best.",
  //     "imagePath": "asset/images/bog.jpg"
  //   },
  //  {
  //     'title': "Web Design",
  //     "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
  //     "imagePath": "asset/images/web-design.png"
  //   },
  // ];

  // @override
//   Widget build(BuildContext context) {
   
//   }
// }
class AllServies extends StatelessWidget {

   final List<QueryDocumentSnapshot> services;

  const AllServies({super.key, required this.services});

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
                imagePath: "assets/images/bog.jpg",
                title:  services[index]["service_name"],
                service_id:services[index].id
                )
            );
          
        },)
      ),
    );
  }
}