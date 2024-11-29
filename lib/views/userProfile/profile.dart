import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/dealings/all_dealing.dart';
import 'package:taskito/views/language/launguage.dart';
import 'package:taskito/views/notification/notifcation.dart';
import 'package:taskito/views/payment/payment.dart';
import 'package:taskito/views/profile/account_settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 20,
        leading: const Text(" "),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromRGBO(116, 101, 239, 0.06),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountSettings(),));
                          },
                          icon: const Icon(Icons.mode_edit_outline_outlined))
                    ],
                  ),
                  const Column(
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
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.all(7),
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
                                color: const Color.fromRGBO(228, 217, 252, 1),
                                style: IconButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(
                                      228, 217, 252, 1), // Background color
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Notifications',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
                              },
                              icon: const Icon(
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
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.all(7),
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
                                  color: const Color.fromRGBO(228, 217, 252, 1),
                                  style: IconButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(
                                        228, 217, 252, 1), // Background color
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'All deals',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllDealing(),));
                                },
                                icon: const Icon(
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
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.all(7),
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
                                color: const Color.fromRGBO(228, 217, 252, 1),
                                style: IconButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(
                                      228, 217, 252, 1), // Background color
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Settings',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>const AccountSettings() ));
                              },
                              icon: const Icon(
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
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Launguage(),));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Set the border radius for rounded corners
                      ),
                      color: Colors.white,
                      child: Container(
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                 Container(
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(228, 217, 252, 1), // Background color
                                    shape: BoxShape
                                        .circle, // Makes the container circular
                                  ),
                                  padding: const EdgeInsets.all(
                                      9), // Padding around the icon
                                  child:Image.asset("assets/images/translate.png",scale: 19,)
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'languages',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Launguage(),));
                                },
                                icon: const Icon(
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
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment(),));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Set the border radius for rounded corners
                      ),
                      color: Colors.white,
                      child: Container(
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(228, 217, 252, 1), // Background color
                                    shape: BoxShape
                                        .circle, // Makes the container circular
                                  ),
                                  padding: const EdgeInsets.all(
                                      9), // Padding around the icon
                                  child:Image.asset("assets/images/credit-card.png",scale: 19,)
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Payment',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment(),));
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        // color: Color.fromRGBO(116, 101, 230, 1)
                      ),
                    ),
                  ),

                  // ListTile(
                  //   leading: Icon(Icons.payment),
                  //   title: Text('Payment'),
                  //   trailing: Icon(Icons.arrow_forward),
                  // ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                // Add logout functionality here
              },
              child: const Text('Log out'),
            ),
            TextButton(
              onPressed: () {
                // Add delete account functionality here
              },
              child: const Text(
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
