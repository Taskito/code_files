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
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: MyLayout(page: 0,ind: 0,),
=======
      home: EmailVerification()
>>>>>>> 7dc1a13048c5d967357d077bb9209a099a328ac2
    );
  }
}