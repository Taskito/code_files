import 'package:flutter/material.dart';
import 'package:taskito/views/widgets/splash.dart/second_slider.dart';

class FirstSlider extends StatelessWidget {
  const FirstSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive design
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Top corner image
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/shape top.png', // Top corner image
              width:
                  screenWidth * 0.5, // Responsive width (50% of screen width)
              fit: BoxFit.cover,
            ),
          ),
          // Bottom corner image
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/images/shape one buttom.png', // Bottom corner image
              width: screenWidth * 0.8, // Larger size (80% of screen width)
              fit: BoxFit.cover,
            ),
          ),
          // Center image and content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Center Image
                Image.asset(
                  'assets/images/sliding page.png', // Center image
                  height: screenHeight * 0.3, // 30% of screen height
                  fit: BoxFit.contain,
                ),
                SizedBox(height: screenHeight * 0.05), // Spacer
                // Align text with space from the edges of the screen
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1), // Add horizontal padding
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Your Task,\nOur Priority", // Split text into two lines
                      style: TextStyle(
                        fontFamily: 'Poppins', // Poppins font family
                        fontSize: screenHeight * 0.05, // Increased font size
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color
                      ),
                      textAlign: TextAlign.left, // Align text to the left
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.07), // Spacer
                // Slider icon on the left
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.05), // Margin from left
                    child: Image.asset(
                      'assets/images/second_slider-removebg-preview.png', // Slider icon
                      width: screenWidth * 0.15, // Smaller size
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Arrow positioned on top of the bottom image
          Positioned(
            bottom: screenHeight *
                0.05, // Position slightly above the bottom of the screen
            left: screenWidth * 0.70, // Center the arrow horizontally
            child: GestureDetector(
              onTap: () {
                // Navigate to SecondSlider screen when the arrow is clicked
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondSlider()),
                );
              },
              child: Image.asset(
                'assets/images/arrow.png', // Arrow image
                height: screenHeight * 0.1, // Adjust size accordingly
              ),
            ),
          ),
        ],
      ),
    );
  }
}
