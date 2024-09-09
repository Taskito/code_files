import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

class PhysicalServies extends StatelessWidget {
   PhysicalServies({super.key});

 List<Map> products = [
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
   {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 12,right: 12),
      child: (
        ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return(
              CardDesign(
                description:products[index]["description"] ,
                imagePath: products[index]["imagePath"],
                title:  products[index]["title"],
                )
            );
          
        },)
      ),
    );
  }
}