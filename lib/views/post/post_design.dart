import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class PostDesign extends StatefulWidget {
  final String name;
  final Timestamp created_at;
  final String job_title;
  final String content;
 const PostDesign({
    Key? key,
    required this.name,
    required this.created_at,
    required this.job_title,
    required this.content,
  }) : super(key: key);

  @override
  State<PostDesign> createState() => _PostDesignState();
}

class _PostDesignState extends State<PostDesign> {
  bool liked = false;
  bool saved = false;
   String _formatTimestamp(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();  // Convert Timestamp to DateTime
    return DateFormat('MMM dd, yyyy').format(dateTime);  // Format to 'Mar 25, 2022'
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // elevation: 4,
      decoration: const BoxDecoration(
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
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Placeholder for user image
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                       Text(widget.job_title,
                          style: TextStyle(color: Colors.grey)),
                       Text(_formatTimestamp(widget.created_at),
                          style: TextStyle(color: Colors.grey)),
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
              widget.content,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          // Hashtags
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                    margin: const EdgeInsets.only(right: 4.0),
                    height: 250,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/work.png"), // Placeholder for image
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
                      margin: const EdgeInsets.only(left: 4.0, bottom: 2),
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                          image: AssetImage(
                              "assets/images/Image 135 (3).png"), // Placeholder for image
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4.0, top: 6),
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                          image: AssetImage(
                              "assets/images/web-design.png"), // Placeholder for image
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          // Action Buttons
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {
                      liked = !liked;
                      setState(() {});
                    },
                    label: const Text('Like'),
                    icon: liked
                        ? const Icon(CupertinoIcons.hand_thumbsup_fill,
                            size: 14)
                        : const Icon(CupertinoIcons.hand_thumbsup, size: 14)),
                TextButton.icon(
                  onPressed: () {},
                  label: const Text('Comment'),
                  icon: const Icon(Icons.add_comment_outlined, size: 14),
                ),
                TextButton.icon(
                    onPressed: () {
                      saved = !saved;
                      setState(() {});
                    },
                    label: const Text('Save'),
                    icon: saved
                        ? const Icon(
                            Icons.bookmark_add_rounded,
                            size: 14,
                          )
                        : const Icon(
                            Icons.bookmark_add_outlined,
                            size: 14,
                          )),
                // TextButton(onPressed: () {}, child: Text('Save')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
