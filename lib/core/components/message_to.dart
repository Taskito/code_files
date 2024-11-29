import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class MessageTo extends StatelessWidget {
  final String message;
  const MessageTo({super.key, 
    required this.message
  });
  @override
  Widget build(BuildContext context) {
        Dimensions.setDimensions(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(Dimensions.getHeight(0.01)),
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.02), vertical: Dimensions.getHeight(0.02)),
          width: Dimensions.getWidth(0.7),
          constraints: BoxConstraints(maxWidth: Dimensions.getWidth(0.7)),
          decoration: const BoxDecoration(
              color: mainGrey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 15,
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
          ),
        ),
        ClipOval(
          child: Image.asset(
            "assets/images/person.jpg",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}