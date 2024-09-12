import 'package:flutter/cupertino.dart';
import 'package:taskito/views/card/card.dart';

class OnlineServies extends StatelessWidget {

  final List<Map<String, dynamic>> products;

  const OnlineServies({required this.products});
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