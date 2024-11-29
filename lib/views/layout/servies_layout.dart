import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/layout/layout.dart';
import 'package:taskito/views/profile/profile_details.dart';
import 'package:taskito/views/service/all_service.dart';
import 'package:taskito/views/service/online_service.dart';
import 'package:taskito/views/service/physical_service.dart';
import 'package:taskito/views/userProfile/profile.dart';

class ServiesLayout extends StatefulWidget {
  final int ind;
  //  final List<Map> products;
  const ServiesLayout({
    super.key,
    required this.ind,
    // required this.products
  });

  @override
  State<ServiesLayout> createState() => _ServiesLayoutState();
}

class _ServiesLayoutState extends State<ServiesLayout> {
  String searchValue = "";
  late int _selectedIndex;

  List<QueryDocumentSnapshot> allProducts = [];
  List<QueryDocumentSnapshot> filteredProducts = [];
  void _getData() async {
    QuerySnapshot quarysnapshot =
        await FirebaseFirestore.instance.collection("service").get();
    allProducts.addAll(quarysnapshot.docs);

    

    setState(() {});

    // str.pause();
  }

  @override
  void initState() {
    _getData();
    _selectedIndex = widget.ind;
    filteredProducts = allProducts;
    super.initState();

    // Initialize with all products
  }

  void _filterProducts(String searchValue) {
    setState(() {
      filteredProducts = allProducts
          .where((product) => product["service_name"]
              .toLowerCase()
              .contains(searchValue.toLowerCase()))
          .toList();
    });
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      AllServies(
          services:
              filteredProducts), // We will pass filteredProducts to these pages later
      OnlineServies(
          services: filteredProducts
              .where((product) => product["service_type"] == "online")
              .toList()),
      PhysicalServies(
          services: filteredProducts
              .where((product) => product["service_type"] == "physical")
              .toList()),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.amberAccent,

                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search ',
                          hintStyle:
                              const TextStyle(fontSize: 13, color: Colors.grey),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 116, 101, 230),
                                width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 1.0),
                          ),
                        ),
                        onChanged: (value) {
                          _filterProducts(value);
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        if ("user_type" == "saller") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                     MyLayout(ind: 0, page: 4),
                              ));
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                     MyLayout(ind: 0, page: 3),
                              ));
                        }
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.purple,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/bog.jpg', // Replace with your image URL
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // Custom Tab Bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTab('All', 0),
                  _buildTab('Online', 1),
                  _buildTab('Physical', 2),
                ],
              ),
            ),
            // Content Area
            Expanded(
              child: pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    final isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onTabSelected(index),
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        decoration: BoxDecoration(
          //  color: Colors.black,
          border: Border(
            bottom: BorderSide(
              color: isSelected
                  ? const Color.fromARGB(255, 116, 101, 230)
                  : Colors.transparent,
              width: 2.0,
            ),
          ),
        ),
        child: SizedBox(
          width: 90,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected
                    ? const Color.fromARGB(255, 116, 101, 230)
                    : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
