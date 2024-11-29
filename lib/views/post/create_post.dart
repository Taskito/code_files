import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/layout/layout.dart';
import 'package:taskito/views/post/show_posts.dart';

class CreatePost extends StatelessWidget {
  CreatePost({super.key});
  final _formkey = GlobalKey<FormState>();
  TextEditingController posttext = TextEditingController();
  TextEditingController postfeild = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Create Post"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "What's on your mind?",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              const SizedBox(height: 20),
              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      maxLines: 1,
                      controller: postfeild,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "enter this post feild it or grafic",
                        hintStyle: const TextStyle(color: textgrey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 116, 101, 230),
                              width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      maxLines: 7,
                      controller: posttext,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Input Text...",
                        hintStyle: const TextStyle(color: textgrey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 116, 101, 230),
                              width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.share, size: 16),
                          label: const Text(
                            "Upload Image",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: mainPurple,
                            iconColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              // Spacer to push the button to the bottom
              const SizedBox(height: 100), // Adjust height if needed
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () async {
              // if (_formkey.currentState!.validate()) {
              print(posttext.text);
              var data = await FirebaseFirestore.instance
                  .collection("posts")
                  .add({
                    "content": posttext.text,
                    "postfeild": postfeild.text,
                    "user_id": {"user_name": "nada", "type": "saller"},
                    "created_at": Timestamp.now()
                  })
                  .then((value) => print("added"))
                  .catchError((error) => print("error ${error}"));

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => MyLayout(ind: 0, page: 2)),
              );
            }
            // },
            ,
            style: TextButton.styleFrom(
              backgroundColor: mainPurple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            ),
            child: const Text(
              "Make Post",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
