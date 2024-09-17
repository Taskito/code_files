import 'package:flutter/material.dart';

typedef Callback = String? Function(String?);

class MainTxtField extends StatelessWidget {
  final double borderRadius;
  final String hintText;
  final TextEditingController controller;
  final Icon? fieldIcon;
  final String? Function(String?)? validator;
  final Callback? onChange;

  const MainTxtField({
    Key? key,
    this.borderRadius = 20,
    required this.hintText,
    required this.controller,
    this.fieldIcon,
    this.validator,
    this.onChange,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            controller: controller,
            validator: validator,
            onChanged: onChange,
            decoration: InputDecoration(

              prefixIcon: fieldIcon,
              hintText: hintText,    
              
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: Color.fromARGB(255, 116, 101, 230), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
              ));


   
  }
}
