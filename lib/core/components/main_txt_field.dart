import 'package:flutter/material.dart';

class MainTxtField extends StatelessWidget {
  final double borderRadius;
  final String hintText;
  final TextEditingController controller;
  final Icon? fieldIcon;
  const MainTxtField({
    Key? key,
    this.borderRadius = 20,
    required this.hintText,
    required this.controller,
    this.fieldIcon
  });
  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,    
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromARGB(183, 224, 224, 224)),
                borderRadius: BorderRadius.circular(borderRadius)
              )
              )));
  }
}
