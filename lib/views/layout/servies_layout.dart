import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/service/all_service.dart';
import 'package:taskito/views/service/online_service.dart';
import 'package:taskito/views/service/physical_service.dart';

class ServiesLayout extends StatefulWidget { 
   final int ind ;
   const ServiesLayout(
  { required this.ind}
  );

  @override
  State<ServiesLayout> createState() => _ServiesLayoutState();
}

class _ServiesLayoutState extends State<ServiesLayout> {

 late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    // Initialize _selectedIndex based on widget.ind
    _selectedIndex = widget.ind;
  }


  final List<Widget> _pages = [
  AllServies(),
  OnlineServies(),
  PhysicalServies()

  ];
  

  
  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
                      height: 35,
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
        ),
                        ),
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
                      'asset/images/bog.jpg', // Replace with your image URL
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