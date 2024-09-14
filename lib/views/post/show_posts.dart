import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/post/create_post.dart';
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
      "imagePath": "assets/images/bog.jpg"
    },
   {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg"
    },
  ];
  List groups=[
    "Support IT Team",
    "Graific Design",
    "Cooking",
    "Web developer"
  ];
  final _scaffoldKey=GlobalKey<ScaffoldState>();
 void _showCenteredModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Stack(
            children: [Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
            
                  ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromRGBO(245, 241, 254, 1),
                    child: Icon(Icons.add, color: Color.fromARGB(255,109, 49, 237)),
                  ),
                  title: Text('Create Post'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost(),));
                  },
                ),
                  SizedBox(height: 10),
                Container(
                  height: MediaQuery.sizeOf(context).height/3,
                  child: ListView.builder(
                    itemCount: groups.length,
                    itemBuilder: (BuildContext context, int index) {
                      return  ListTile(
                      leading: CircleAvatar(
                        backgroundColor:  Color.fromRGBO(245, 241, 254, 1),
                        child: Text(groups[index][0]+groups[index][1],style: TextStyle(color: Color.fromARGB(255,109, 49, 237)),),
                      ),
                      title: Text(groups[index],style: TextStyle(fontSize: 12),),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      trailing: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 11,
                        child: Text("5",style: TextStyle(color: Colors.white),),
                      ),
                    );
                    },
                  ),
                ),
                 
                
                ],
              ),
              
            ),
              SizedBox(height: 10),
                 Positioned(
      top: 0, // Adjust top position as needed
      right: 0, // Adjust right position as needed
      child: IconButton(
        style: IconButton.styleFrom(iconSize: 20),
        icon: Icon(CupertinoIcons.xmark),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
            ]
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _showModalBottomSheet(context),
      //   child: Icon(Icons.add),
      // ),
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text("Posts"),
        
        actions: [
          IconButton(onPressed: (){
            _showCenteredModal(context);
              
          }, icon: Icon(Icons.keyboard_control))
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