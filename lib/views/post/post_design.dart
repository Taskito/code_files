import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDesign extends StatefulWidget {
  const PostDesign({super.key});

  @override
  State<PostDesign> createState() => _PostDesignState();
}

class _PostDesignState extends State<PostDesign> {
 bool liked =false;
bool saved=false;
  @override
  Widget build(BuildContext context) {
return Container(
  
      // elevation: 4,
   decoration: BoxDecoration(
     color: Colors.white,
      border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
                ),
              ),
   ),
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Info
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Placeholder for user image
                  radius: 20,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jena', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Bali, Indonesia', style: TextStyle(color: Colors.grey)),
                      Text('Mar 25, 2022', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Post Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Live with no excuses and travel with no regrets',
              style: TextStyle(fontSize: 16),
            ),
          ),
          // Hashtags
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              '#travel #bali',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          // Image Gallery
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 4.0),
                    height: 250,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage("assets/images/Image 135 (2).png"), // Placeholder for image
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                 Container(
                    margin: EdgeInsets.only(left: 4.0,bottom: 2),
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image:AssetImage("assets/images/Image 135 (3).png"), // Placeholder for image
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),Container(
                    margin: EdgeInsets.only(left: 4.0,top: 6),
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/images/web-design.png"), // Placeholder for image
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    ],
                  )
                ),
              
              ],
            ),
          ),
          // Action Buttons
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(onPressed: (){
                  liked=!liked;
                  setState(() {
                    
                  });
                  
                }, label: Text('Like'),icon:liked? Icon(CupertinoIcons.hand_thumbsup_fill,size: 14):Icon(CupertinoIcons.hand_thumbsup,size: 14)),
              TextButton.icon(onPressed: (){}, label: Text('Comment'),icon: Icon(Icons.add_comment_outlined,size: 14),),
                  TextButton.icon(onPressed: (){
                     saved=!saved;
                  setState(() {
                    
                  });
                  }, label: Text('Save'),icon:saved?Icon(Icons.bookmark_add_rounded,size: 14,) :Icon(Icons.bookmark_add_outlined,size: 14,)),
                // TextButton(onPressed: () {}, child: Text('Save')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}