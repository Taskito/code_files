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
  

  @override
  Widget build(BuildContext context) {
       return Scaffold(
   
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,36,0,10),
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
                        image: AssetImage('asset/images/bac_header.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 100.0),
                  //   child: Center(
                  //     child: Text(
                  //       'Taskito',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 40,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              
              SizedBox(height: 20),
              
              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for services',
                      hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                      prefixIcon: Icon(Icons.search,color: Colors.grey),
                          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Color.fromARGB(255, 116, 101, 230), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 20),
              
              // Popular Services
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Popular Services',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              SizedBox(height: 10),
              
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardDesign(
                      imagePath: 'asset/images/bog.jpg',
                      title: 'Pet Grooming',
                      description: 'Professional grooming services for your pet to ensure they look and feel their best.',
                    ),
                    CardDesign(
                      imagePath: 'asset/images/web-design.png',
                      title: 'Web Design',
                      description: 'Learn to cook delicious meals from home with our expert chefs guiding you.',
                    ),
                  ],
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
                        imagePath: 'asset/images/Image 135 (3).png',
                      title: 'Online Services',
                      buttonText: 'See More',
                      goto:MyLayout(ind: 1, page: 1)
                    ),
                    CategoryCard(
                      imagePath: 'asset/images/Image 135 (2).png',
                      title: 'Physical Services',
                      buttonText: 'See More',
                      goto:MyLayout(ind: 2, page: 1)
                    ),
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
