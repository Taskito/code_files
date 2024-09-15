import 'dart:async';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/widgets/splash.dart/first_slider.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Delay for 4 seconds, then navigate to FirstSlider
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirstSlider()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: mainGrey, // Use your defined background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.05), // 5% of screen height
            // Add your logo
            Image.asset(
              'assets/images/circle logo.png', // Path to your logo
              height: screenHeight * 0.3, // 30% of screen height
              width: screenWidth * 0.6, // 60% of screen width
            ),
            SizedBox(
                height: screenHeight * 0.05), // Space between logo and loader
            // Circular Progress Indicator (buffering icon)
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                mainPurple,
              ), // Use your defined primary color
            ),
            SizedBox(
                height: screenHeight * 0.03), // Space between loader and text
          ],
        ),
      ),
    );
  }
}
