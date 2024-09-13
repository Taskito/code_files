import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class Review extends StatelessWidget {
  final String imagePath;
  final String reviewMessage;
  final String postedAt;
  final double ratingStars;
  final double width;
  final String username;
  const Review({
    required this.imagePath,
    required this.reviewMessage,
    required this.postedAt,
    required this.ratingStars,
    required this.width,
    required this.username
  });
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
      decoration: BoxDecoration(
        color: mainGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      width: Dimensions.getWidth(width),
      height: Dimensions.getHeight(0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      imagePath,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "A day ago",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(160, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              RatingStars(
                value: ratingStars,
                starCount: 5,
                starSize: 12,
                starOffColor: Colors.grey,
                valueLabelVisibility: false,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            reviewMessage,
            style: TextStyle(fontSize: 17, color: Color.fromARGB(160, 0, 0, 0)),
          ),
        ],
      ),
    );
  }
}
