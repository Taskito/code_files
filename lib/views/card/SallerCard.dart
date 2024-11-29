import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/profile/profile_details.dart';

class SellerCard extends StatelessWidget {
  
  final String name;
  final String title;
  final int rating;
  final bool isTopPerformer;
  final String description;
  const SellerCard({super.key, 
    required this.name,
    required this.title,
    required this.rating,
    required this.isTopPerformer,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
          const ProfileDetails()
        ));
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
              
                borderRadius: BorderRadius.circular(
                    4.0),
                side: const BorderSide(
                  color:Color.fromARGB(255,248, 249, 250),
                  width: 1
                ) // Set the border radius for rounded corners
              ),
              color: Colors.white,
        margin: const EdgeInsets.fromLTRB(8,8,8,6),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Column(
                children: [
                    CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blueAccent,
                child: Image.asset("assets/images/user.png")
              ),
                Row(
                      children: List.generate(5, (index) {
                      return Icon(
        index < rating ? Icons.star : Icons.star_border,
        color: Colors.amber,
        size: 16,
      );
                      }),
                      
                    ),
      
                ],
              ),
            
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        if (isTopPerformer)
                          Container(
                            decoration: 
                            BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromRGBO(245, 241, 254, 1),
                              ),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            // color: Color.fromRGBO(245, 241, 254, 1),
                            child: const Text(
                              'Top performer',
                              style: TextStyle(color: Color.fromARGB(255,109, 49, 237), fontSize: 12),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(title,style: const TextStyle(color: textgrey,fontSize: 12)),
                    const SizedBox(height: 4),
                        Text(description,style: const TextStyle(fontSize: 12),),
                    const SizedBox(height: 4),
                  
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}