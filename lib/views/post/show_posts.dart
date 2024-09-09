import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/post/post_design.dart';

class ShowPosts extends StatefulWidget {
  const ShowPosts({super.key});

  @override
  State<ShowPosts> createState() => _ShowPostsState();
}

class _ShowPostsState extends State<ShowPosts> {
  
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text("Posts"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_control))
        ],
      ),
      body: Padding(
      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 12,right: 12),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: (
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return(
                PostDesign(
                
                  )
              );
            
          },)
        ),
      ),
    ),
    );
  }
}