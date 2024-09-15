import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Edit Profile", style: TextStyle(fontWeight: FontWeight.bold),),),
      ),
    );
  }
}