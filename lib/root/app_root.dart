import 'package:flutter/material.dart';
import 'package:taskito/views/email_verification.dart';
import 'package:taskito/views/id_verification.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmailVerification()
    );
  }
}