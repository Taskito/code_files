import 'package:flutter/material.dart';
import 'package:taskito/views/login/login.dart';
import 'package:taskito/views/signup/explore.dart';
// Define your colors
const Color primary = Color(0xFF7465E6); // Main color
const Color secondary = Color(0xFF04D2FA); // Secondary color
const Color backgroundColor = Color(0xFFF2F6F7); // Background color

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size to make it responsive
    final size = MediaQuery.of(context).size;
    final double imageHeight =
        size.height * 0.4; // 40% of screen height for the image
    final double textFontSize =
        size.width * 0.08; // 8% of screen width for text font size
    final double buttonPadding =
        size.width * 0.1; // 10% of screen width for button padding
    final double buttonFontSize =
        size.width * 0.04; // 4% of screen width for button font size

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center the image with responsive height
            Image.asset(
              'assets/images/explore.png', // Replace with your image path
              height: imageHeight, // Adjust the height based on screen size
            ),
            const SizedBox(height: 20), // Space between image and text

            // "Explore The App" text with responsive font size
            Text(
              'Explore The App',
              style: TextStyle(
                color: primary, // Set the color to primary
                fontSize: textFontSize, // Adjust font size based on screen size
                fontWeight: FontWeight.w600, // Adjust font weight
                fontFamily: 'Poppins', // Set Poppins font
              ),
            ),
            const SizedBox(height: 40), // Space between text and buttons

            // First button: Sign In (More extended, small rounded) with responsive padding and font size
            SizedBox(
              width:
                  double.infinity, // Make the button extend fully horizontally
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: buttonPadding), // Responsive horizontal padding
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary, // Primary color for background
                    padding: const EdgeInsets.symmetric(
                        vertical: 16), // Button height
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), // Small rounded corners
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: backgroundColor, // Background color for text
                      fontSize: buttonFontSize, // Responsive font size
                      fontFamily: 'Poppins', // Set Poppins font
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between the buttons

            // Second button: Create Account (Blank background, black border) with responsive padding and font size
            SizedBox(
              width:
                  double.infinity, // Make the button extend fully horizontally
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: buttonPadding), // Responsive horizontal padding
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16), // Button height
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), // Small rounded corners
                    ),
                    side: const BorderSide(
                      color: Colors.black, // Black border color
                      width: 2, // Border width
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Explore(),
                      ),
                    );
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.black, // Black text color
                      fontSize: buttonFontSize, // Responsive font size
                      fontFamily: 'Poppins', // Set Poppins font
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
