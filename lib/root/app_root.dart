import 'package:flutter/material.dart';
import 'package:taskito/views/email_verification.dart';
import 'package:taskito/views/id_verification.dart';

import 'package:taskito/views/layout/layout.dart';
import 'package:taskito/views/layout/servies_layout.dart';
import 'package:taskito/views/servies/physical_servies.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      
      color: Colors.white,
      debugShowCheckedModeBanner: false,

      home: MyLayout(page: 0,ind: 0,),


    );
  }
}