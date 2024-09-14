import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

class PhysicalServies extends StatelessWidget {
     final List<Map<String, dynamic>> products;

  const PhysicalServies({required this.products});
 

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