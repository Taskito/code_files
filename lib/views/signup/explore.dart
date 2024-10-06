import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/login/login.dart';
import 'package:taskito/views/signup/register.dart';
import 'package:taskito/views/upload_image/upload_image.dart';
 // Import your Login page

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white, // Set scaffold background color to white
      body: Stack(
        children: [
          // Slider rounded background layer
          Positioned(
            top: screenHeight * 0.07, // Adjust position based on screen size
            left: 0,
            right: 0,
            bottom: screenHeight * 0.04,
            child: Container(
              height: screenHeight * 0.75, // Adjust the height responsively
              decoration: BoxDecoration(
                color: signupcolor, // Background color for the slider
                borderRadius: BorderRadius.circular(50), // Rounded corners
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, // Responsive padding
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image
                  Image.asset(
                    'assets/images/explore.png',
                    height: screenHeight * 0.35, // Responsive image height
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  // "Explore The App" text
                  Text(
                    'Explore The App',
                    style: TextStyle(
                      color: mainPurple,
                      fontSize: screenWidth * 0.08, // Responsive font size
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),

                  // Continue with Google button
                  _buildAuthButton(
                    'Continue with Google',
                    'assets/images/google.png',
                    () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UploadPhoto(),
                        ),
                      );
                    },
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Continue with Apple button
                  _buildAuthButton(
                    'Continue with Apple',
                    'assets/images/apple-logo.png',
                    () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UploadPhoto(),
                        ),
                      );
                    },
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Continue with Email button
                  _buildAuthButton(
                    'Continue with Email',
                    'assets/images/email.png',
                    () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UploadPhoto(),
                        ),
                      );
                    },
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Register button
                  _buildAuthButton(
                    'Create New Account',
                    'assets/images/register.png',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                    },
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // "Already have an account? Login" text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035, // Responsive text size
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize:
                                screenWidth * 0.035, // Responsive text size
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build the auth buttons with an icon and label
  Widget _buildAuthButton(String label, String iconPath, VoidCallback onPressed,
      double screenWidth) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            vertical: screenWidth * 0.04, // Responsive padding
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 5,
        ),
        onPressed: onPressed,
        icon: Image.asset(
          iconPath,
          height: screenWidth * 0.06, // Responsive icon size
        ),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.04, // Responsive text size
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
