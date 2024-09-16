import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/card/card.dart';
import 'package:taskito/views/home/home.dart';
import 'package:taskito/views/layout/servies_layout.dart';
import 'package:taskito/views/post/post_design.dart';
import 'package:taskito/views/post/show_posts.dart';
import 'package:taskito/views/profile/profile_details.dart';
import 'package:taskito/views/sallerList/saller_list.dart';
import 'package:taskito/views/userProfile/profile%20saller.dart';
import 'package:taskito/views/userProfile/profile.dart';

class MySaller extends StatefulWidget {
    final int ind ;
     final int page ;
   const MySaller(
  { required this.ind,
  required this.page}
  );
  @override
  State<MySaller> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MySaller> {
  late int selectedvalue;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    // Initialize _selectedIndex based on widget.ind
    selectedvalue = widget.page;
       _pages = [
    MyHomeScreen(),
    ServiesLayout(ind: widget.ind ),
  ShowPosts(),
  ProfileDetails(),
    ProfileSaller()

    // MyFavouritelist(),
    // MyProfileScreen()
  ];
    
  }
  //  int selectedvalue = 0;


  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
         backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: _pages.elementAt(selectedvalue),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
            
              icon: Icon(CupertinoIcons.house_alt), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.extension), label: "servies"),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: "posts"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "profile"),
                BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: "Settings"),
        
        ],
        onTap: (value) {
          setState(() {
            selectedvalue = value;
            // print(value);
          });
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (context) => _pages[value]));
        },
        currentIndex: selectedvalue,
        selectedItemColor: Color.fromARGB(255, 116, 101, 230),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 10,
      ),
    )
    );
  }
}