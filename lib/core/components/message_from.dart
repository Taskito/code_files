import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class MessageFrom extends StatelessWidget {
  final String message;
  const MessageFrom({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
          child: Image.asset(
            "assets/images/person.jpg",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          constraints: BoxConstraints(maxWidth: Dimensions.getWidth(0.7)),
          padding: EdgeInsets.all(Dimensions.getHeight(0.01)),
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.02), vertical: Dimensions.getHeight(0.02)),
          width: Dimensions.getWidth(0.7),
          decoration: const BoxDecoration(
              color: mainPurple,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Text(
            message,
            softWrap: true,
            overflow: TextOverflow.visible,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        )
      ],
    );
  }
}
