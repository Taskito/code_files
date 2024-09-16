import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/dealings/all_dealing.dart';
import 'package:taskito/views/language/launguage.dart';
import 'package:taskito/views/notification/notifcation.dart';
import 'package:taskito/views/payment/payment.dart';
import 'package:taskito/views/profile/account_settings.dart';
import 'package:taskito/views/profile/profile_details.dart';

class ProfileSaller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 20,
        leading: Text(" "),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color.fromRGBO(116, 101, 239, 0.06),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSettings(),));
                          },
                          icon: Icon(Icons.mode_edit_outline_outlined))
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                            'assets/images/user.png'), // Replace with actual image URL
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Jennifer Lopez',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('taylorlauren@hotmail.com'),
                      SizedBox(height: 32),
                    ],
                  )
                ],
              ),
            ),
            // SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Set the border radius for rounded corners
                    ),
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton.filled(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Color.fromRGBO(116, 101, 230, 1),
                                  size: 30,
                                ),
                                color: Color.fromRGBO(228, 217, 252, 1),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(
                                      228, 217, 252, 1), // Background color
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Notifications',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      // color: Color.fromRGBO(116, 101, 230, 1)
                    ),
                  ),
                  InkWell(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => AllDealing(),));
                    },
                    child: Card(
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Set the border radius for rounded corners
                      ),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton.filled(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.local_offer,
                                    color: Color.fromRGBO(116, 101, 230, 1),
                                    size: 30,
                                  ),
                                  color: Color.fromRGBO(228, 217, 252, 1),
                                  style: IconButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(
                                        228, 217, 252, 1), // Background color
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'All deals',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllDealing(),));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        // color: Color.fromRGBO(116, 101, 230, 1)
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Set the border radius for rounded corners
                    ),
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton.filled(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.settings,
                                  color: Color.fromRGBO(116, 101, 230, 1),
                                  size: 30,
                                ),
                                color: Color.fromRGBO(228, 217, 252, 1),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(
                                      228, 217, 252, 1), // Background color
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>AccountSettings() ));
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      // color: Color.fromRGBO(116, 101, 230, 1)
                    ),
                  ),
                  InkWell(
                    onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Launguage(),));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Set the border radius for rounded corners
                      ),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                 Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(228, 217, 252, 1), // Background color
                                    shape: BoxShape
                                        .circle, // Makes the container circular
                                  ),
                                  padding: EdgeInsets.all(
                                      9), // Padding around the icon
                                  child:Image.asset("assets/images/translate.png",scale: 19,)
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'languages',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => Launguage(),));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        // color: Color.fromRGBO(116, 101, 230, 1)
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Set the border radius for rounded corners
                      ),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(228, 217, 252, 1), // Background color
                                    shape: BoxShape
                                        .circle, // Makes the container circular
                                  ),
                                  padding: EdgeInsets.all(
                                      9), // Padding around the icon
                                  child:Image.asset("assets/images/credit-card.png",scale: 19,)
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Payment',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                   
                      ),
                    ),
                  ),
                    InkWell(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Set the border radius for rounded corners
                      ),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(228, 217, 252, 1), // Background color
                                    shape: BoxShape
                                        .circle, // Makes the container circular
                                  ),
                                  padding: EdgeInsets.all(
                                      9), // Padding around the icon
                                  child:Image.asset("assets/images/credit-card.png",scale: 19,)
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'See Acount',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileDetails(
                                    
                                  )));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        // color: Color.fromRGBO(116, 101, 230, 1)
                      ),
                    ),
                  ),
             
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                // Add logout functionality here
              },
              child: Text('Log out'),
            ),
            TextButton(
              onPressed: () {
                // Add delete account functionality here
              },
              child: Text(
                'Delete account',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
