import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:taskito/core/components/review.dart';
import 'package:taskito/core/helpers/dimensions.dart';

class SeeAllReviews extends StatelessWidget {
  const SeeAllReviews({super.key});

  @override
  Widget build(BuildContext context) {
        Dimensions.setDimensions(context);
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Profile Details",
              style: TextStyle(fontWeight: FontWeight.bold),),),
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05),),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/person.jpg",
                          width: Dimensions.getWidth(0.3),
                          height: Dimensions.getHeight(0.15),
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: Dimensions.getWidth(0.6),
                          // height: Dimensions.getHeight(0.15),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Sandra Medhat",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const Text(
                                "Graphic Designer",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: const Color.fromARGB(206, 248, 187, 208),
                                    width: Dimensions.getWidth(0.25),
                                    padding: const EdgeInsets.all(10),
                                    height: Dimensions.getHeight(0.09),
                                    // decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)),
                                    child: const Column(
                                      children: [
                                        Text("Rating"),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingStars(
                                          value: 2.5,
                                          starCount: 5,
                                          starSize: 10,
                                          valueLabelVisibility: false,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.blue[50],
                                    width: Dimensions.getWidth(0.25),
                                    height: Dimensions.getHeight(0.09),
                                    // height: Dimensions.getHeight(0.1),
                                    // decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)),
                                    child: const Column(
                                      children: [
                                        Text("CLIENTS"),
                                        Text(
                                          "50",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.folder_copy_outlined,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reviews",
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    const SingleChildScrollView(
                      child: Column(
                        children: [
                          Review(imagePath: "assets/images/person.jpg", reviewMessage: "Thanks so much Sandra for the logo that met my expectations!!", postedAt: "A day ago", ratingStars: 4.5, width: 0.9, username: "Nadia Khaled"),
                          Review(imagePath: "assets/images/person.jpg", reviewMessage: "Thanks Sndra for this brilliant logo!", postedAt: "2 Days ago", ratingStars: 4.5, width: 0.9, username: "Salema Ayman")
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                )
                ),
          ),
        );
  }
}