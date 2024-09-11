import 'package:flutter/material.dart';

typedef callback = String? Function(String?);


class MainTxtField extends StatelessWidget {
  final double borderRadius;
  final String hintText;
  final TextEditingController controller;
  final Icon? fieldIcon;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChange;
  const MainTxtField({
    Key? key,
    this.borderRadius = 20,
    required this.hintText,
    required this.controller,
    this.fieldIcon,
    this.validator,
    this.onChange
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            controller: controller,
            validator: validator,
            onChanged: onChange,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              icon: fieldIcon,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromARGB(183, 224, 224, 224)),
                borderRadius: BorderRadius.circular(borderRadius)
              )
              )
              );
  }
}
