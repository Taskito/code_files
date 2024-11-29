import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/post/create_post.dart';
import 'package:taskito/views/post/post_design.dart';

class ShowPosts extends StatefulWidget {
  final String posttype;
  const ShowPosts({
    
    required this.posttype
  });

  @override
  State<ShowPosts> createState() => _ShowPostsState();
}

class _ShowPostsState extends State<ShowPosts> {
  List<QueryDocumentSnapshot> posts = [];
  List groups = [
    "IT",
    "Graific Design",
    "Cooking",
    "Web developer"
  ];
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  void _getData() async {
    if (widget.posttype=="all"){
    QuerySnapshot quarysnapshot =
        await FirebaseFirestore.instance.collection("posts").get();
     posts.addAll(quarysnapshot.docs);
    }else{
          QuerySnapshot quarysnapshot =
        await FirebaseFirestore.instance.collection("posts").where("postfeild",isEqualTo: widget.posttype).get();
     posts.addAll(quarysnapshot.docs);

    }
   
   

    setState(() {});

    // str.pause();
  }

  @override
  void initState() {
    _getData();

    super.initState();

    // Initialize with all products
  }

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
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color.fromRGBO(245, 241, 254, 1),
                      child: Icon(Icons.add,
                          color: Color.fromARGB(255, 109, 49, 237)),
                    ),
                    title: const Text('Create Post'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreatePost(),
                          ));
                    },
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 3,
                    child: ListView.builder(
                      itemCount: groups.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                                const Color.fromRGBO(245, 241, 254, 1),
                            child: Text(
                              groups[index][0] + groups[index][1],
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 109, 49, 237)),
                            ),
                          ),
                          title: Text(
                            groups[index],
                            style: const TextStyle(fontSize: 12),
                          ),
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ShowPosts(posttype: groups[index]),));
                          },
                          trailing: const CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 11,
                            child: Text(
                              "5",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Positioned(
              top: 0, // Adjust top position as needed
              right: 0, // Adjust right position as needed
              child: IconButton(
                style: IconButton.styleFrom(iconSize: 20),
                icon: const Icon(CupertinoIcons.xmark),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ]),
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
      
        title: const Text("Posts"),
        actions: [
          IconButton(
              onPressed: () {
                _showCenteredModal(context);
              },
              icon: const Icon(Icons.keyboard_control))
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 0, left: 12, right: 12),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: (ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return (PostDesign(
                name: posts[index]["user_id"]["user_name"],
                job_title:  posts[index]["user_id"]["type"],
                content:  posts[index]["content"],
                created_at:  posts[index]["created_at"],

              ));
            },
          )),
        ),
      ),
    );
  }
}
