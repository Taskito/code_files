import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/card/card.dart';
import 'package:taskito/views/card/category_card.dart';
import 'package:taskito/views/layout/layout.dart';
import 'package:taskito/views/layout/servies_layout.dart';
import 'package:taskito/views/service/online_service.dart';
import 'package:taskito/views/service/physical_service.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List popularservice = [];
  void _getData() async {
    var data = await FirebaseFirestore.instance
        .collection("service")
        .orderBy('created_at',
            descending: true) // replace with your timestamp field
        .limit(2)
        .get();

    popularservice = [];
    popularservice.addAll(data.docs);

    setState(() {});

    // str.pause();
  }

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 36, 0, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with image background
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bac_header.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for services',
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 116, 101, 230),
                          width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Popular Services
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Popular Services',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 0),

           Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 0),
  child: ListView.builder(
    shrinkWrap: true, // This allows ListView to be wrapped in another scrollable widget
    itemCount: popularservice.length, // Number of items to display
    itemBuilder: (context, index) {
      return CardDesign(
        imagePath: index == 0
            ? 'assets/images/bog.jpg'
            : 'assets/images/web-design.png', // Handle image path dynamically if needed
        title: popularservice[index]["service_name"],
        description: popularservice[index]["service_description"],
        service_id: popularservice[index].id,
      );
    },
  ),
),


            const SizedBox(height: 20),

            // Service Categories
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Service Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                      imagePath: 'assets/images/Image 135 (3).png',
                      title: 'Online Services',
                      buttonText: 'See More',
                      goto: MyLayout(ind: 1, page: 1)),
                  CategoryCard(
                      imagePath: 'assets/images/work.png',
                      title: 'Physical Services',
                      buttonText: 'See More',
                      goto: MyLayout(ind: 2, page: 1)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
