import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/service/all_service.dart';
import 'package:taskito/views/service/online_service.dart';
import 'package:taskito/views/service/physical_service.dart';

class ServiesLayout extends StatefulWidget { 
   final int ind ;
  //  final List<Map> products;
   const ServiesLayout(
  { required this.ind,
  // required this.products
  
  }
  );

  @override
  State<ServiesLayout> createState() => _ServiesLayoutState();
}

class _ServiesLayoutState extends State<ServiesLayout> {
 String searchValue = "";
  late int _selectedIndex;
  List<Map<String, dynamic>> allProducts = [
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg",
      "type":"physical"
    },
  {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "assets/images/web-design.png",
      "type":"online"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg"
      ,"type":"physical"
    },
    {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "assets/images/web-design.png",
      "type":"online"
    },
    {
      'title': "Pet Grooming",
      "description": "Professional grooming services for your pet to ensure they look and feel their best.",
      "imagePath": "assets/images/bog.jpg",
      "type":"physical"
    },
   {
      'title': "Web Design",
      "description": "Learn to cook delicious meals from home with our expert chefs guiding you.",
      "imagePath": "assets/images/web-design.png",
      "type":"online"
    },
  ];

  List<Map<String, dynamic>> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.ind;
    filteredProducts = allProducts; // Initialize with all products
  }

  void _filterProducts(String searchValue) {
    setState(() {
      filteredProducts = allProducts
          .where((product) => product["title"]
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
     final List<Widget> _pages = [
    AllServies(products: filteredProducts), // We will pass filteredProducts to these pages later
    OnlineServies(products: filteredProducts
          .where((product) => product["type"] == "online")
          .toList()),
      PhysicalServies(products: filteredProducts
          .where((product) => product["type"] == "physical")
          .toList()),
  ];
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Container(
        
        margin: EdgeInsets.only(top: 60),
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
                          hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
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
        )
        ,
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
                    child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.purple,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/bog.jpg', // Replace with your image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Custom Tab Bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
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
              child: _pages[_selectedIndex],
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
        
        padding: EdgeInsets.only(top: 16,bottom: 16),
        decoration: BoxDecoration(
          //  color: Colors.black,
          border: Border(
            bottom: BorderSide(
              color: isSelected
                  ? Color.fromARGB(255, 116, 101, 230)
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
                    ? Color.fromARGB(255, 116, 101, 230)
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