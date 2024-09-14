import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/card/notifaction_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
            CircleAvatar(
                        radius: 20,
                        
                        backgroundImage: AssetImage(
                            'assets/images/user.png'), // Replace with actual image URL
                      ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
                    height: 119,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),

                      ],
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/offer_bac.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Notification",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
          ),
          Expanded(
            child: ListView(
              children: [
                NotifactionCard(
                  name: 'John Doe',
                  message: 'Need help with your project? I\'m here!',
                  time: '10m ago',
                ),
                NotifactionCard(
                  name: 'Emma White',
                  message: 'Special offer on electronics! Check it out now.',
                  time: '10m ago',
                ),
                NotifactionCard(
                  name: 'Jennifer',
                  message: 'Celebrate Jennifer\'s 4-year anniversary at EdTech.com',
                  time: '10m ago',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
