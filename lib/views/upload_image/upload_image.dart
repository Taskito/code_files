import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/choose_language/choose_language.dart';
class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: size.width * 0.85, // Responsive container width
          height: size.height * 0.75, // Responsive container height
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100), // Space from the top of the screen
              // Stack to overlay upload icon on the circular container
              Stack(
                alignment: Alignment
                    .bottomRight, // Align upload icon to the bottom right
                children: [
                  // Circular container for profile picture
                  Container(
                    width:
                        size.width * 0.5, // Increased circular container width
                    height:
                        size.width * 0.5, // Increased circular container height
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200], // Light grey background
                    ),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: size.width * 0.3, // Increased icon size
                        color: Colors.grey[600], // Icon color
                      ),
                    ),
                  ),
                  // Upload icon positioned in the bottom-right corner of the circular container
                  Positioned(
                    bottom:
                        -10, // Position at the bottom of the container, slightly outside
                    right:
                        -10, // Position at the right of the container, slightly outside
                    child: GestureDetector(
                      onTap: () {
                        // Add upload functionality here
                      },
                      child: Container(
                        padding: const EdgeInsets.all(
                            8), // Increased padding around the icon
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors
                              .white, // Background color for the upload icon
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 8,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/Upload.png', // Upload icon
                          width: size.width * 0.15, // Increased icon width
                          height: size.width * 0.15, // Increased icon height
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40), // Space between the circle and text
              // Descriptive text
              Text(
                'Please Upload A Photo',
                style: TextStyle(
                  fontSize: size.width * 0.06, // Increased font size
                  color: mainPurple, // Primary color
                  fontFamily: 'Poppins', // Font family
                  fontWeight: FontWeight.w600, // Font weight
                ),
              ),
              const Spacer(), // Spacer to push the button to the bottom
              // Continue button
              SizedBox(
                width:
                    double.infinity, // Button width extends to the full width
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          size.width * 0.10), // Increased horizontal padding
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainPurple, // Button background color
                      padding: const EdgeInsets.symmetric(
                          vertical: 10), // Increased button height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            25), // Increased border radius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Language(),
                        ),
                      );
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: size.width * 0.05, // Increased font size
                        fontFamily: 'Poppins', // Font family
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
