import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/card/card.dart';
import 'package:taskito/views/home/home.dart';
import 'package:taskito/views/layout/servies_layout.dart';
import 'package:taskito/views/post/post_design.dart';
import 'package:taskito/views/post/show_posts.dart';
import 'package:taskito/views/profile/profile_details.dart';
import 'package:taskito/views/sallerList/saller_list.dart';
import 'package:taskito/views/userProfile/profile.dart';

class MyLayout extends StatefulWidget {
  final int ind;
  final int page;
  
  MyLayout({
    super.key, 
    required this.ind,
    required this.page
  });
  
  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  late List<Widget> _pages;
  int selectedvalue = 0;  // Initialize here with a default value

  @override
  void initState() {
    super.initState();

    // Initialize selectedvalue based on widget.page
    selectedvalue = widget.page;

    // Initialize the pages for bottom navigation
    _pages = [
       MyHomeScreen(),
      ServiesLayout(ind: widget.ind),
      const ShowPosts(posttype: "all",),
      Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages.elementAt(selectedvalue),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_alt), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.extension), label: "Services"),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: "Posts"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            selectedvalue = value;
          });
        },
        currentIndex: selectedvalue,
        selectedItemColor: const Color.fromARGB(255, 116, 101, 230),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 10,
      ),
    );
  }
}
