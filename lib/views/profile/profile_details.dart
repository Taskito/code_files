import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:taskito/core/components/custom_tab_bar.dart';
import 'package:taskito/core/components/review.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Profile Details",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,  // Adjusted font size for responsiveness
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w), // Responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r), // Responsive corner radius
                    child: Image.asset(
                      "assets/images/person.jpg",
                      width: 120.w, // Adjusted width for responsiveness
                      height: 120.w, // Matching height to maintain square aspect ratio
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.w), // Responsive spacing between image and details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sandra Medhat",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,  // Responsive font size
                          ),
                        ),
                        Text(
                          "Graphic Designer",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.sp,  // Responsive font size
                          ),
                        ),
                        SizedBox(height: 10.h), // Responsive spacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildStatBox(
                              title: "Rating",
                              value: "4.5",
                              width: 90.w,
                              height: 70.w,
                              backgroundColor: const Color(0xFFF8BBD0),
                              child: RatingStars(
                                value: 4.5,
                                starCount: 5,
                                starSize: 12.sp,  // Responsive star size
                                valueLabelVisibility: false,
                              ),
                            ),
                            _buildStatBox(
                              title: "Clients",
                              value: "50",
                              width: 90.w,
                              height: 70.w,
                              backgroundColor: Colors.blue[50]!,
                              child: Icon(
                                Icons.folder_copy_outlined,
                                size: 18.sp,  // Responsive icon size
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),  // Responsive spacing
              Text(
                "About",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,  // Responsive font size
                ),
              ),
              Text(
                "Lorem ipsum like cold iced tea taskito for free obj, for everyone else that you want to don everything is possible.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,  // Responsive font size
                ),
              ),
              SizedBox(height: 16.h),  // Responsive spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,  // Responsive font size
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "seeAll");
                    },
                    child: Text(
                      "See all >",
                      style: TextStyle(
                        color: mainPurple,
                        fontSize: 17.sp,  // Responsive font size
                      ),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Review(
                      imagePath: "assets/images/person.jpg",
                      reviewMessage: "Thanks so much Sandra for the logo!",
                      postedAt: "A day ago",
                      ratingStars: 4.5,
                      width: 0.8,
                      username: "Nadia Khaled",
                    ),
                    Review(
                      imagePath: "assets/images/person.jpg",
                      reviewMessage: "Brilliant logo!",
                      postedAt: "2 Days ago",
                      ratingStars: 4.5,
                      width: 0.8,
                      username: "Salema Ayman",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),  // Responsive spacing
              CustomTabBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatBox({required String title, required String value, required Color backgroundColor, required Widget child, required double width, required double height}) {
    return Container(
      padding: EdgeInsets.all(8.w),  // Responsive padding
      width: width,
      height: height,  // Adjusted width
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.r),  // Responsive corner radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 12.sp),  // Responsive font size
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,  // Responsive font size
            ),
          ),
          SizedBox(height: 5.h),  // Responsive spacing
          child,
        ],
      ),
    );
  }
}
