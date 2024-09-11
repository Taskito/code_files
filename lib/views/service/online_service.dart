import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

class OnlineServies extends StatelessWidget {
   OnlineServies({super.key});

 List<Map> products = [
    {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "asset/images/web-design.png"
    },
 {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "asset/images/web-design.png"
    },
    {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "asset/images/web-design.png"
    },
    {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "asset/images/web-design.png"
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