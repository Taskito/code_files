import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

class AllServies extends StatelessWidget {
 
   AllServies({super.key});
  List<Map> products = [
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
  {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "asset/images/web-design.png"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
    {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "asset/images/web-design.png"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "asset/images/bog.jpg"
    },
   {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "asset/images/web-design.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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