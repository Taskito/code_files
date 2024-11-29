import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/layout/layout.dart';

class ChooseTrip extends StatelessWidget {
  const ChooseTrip({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white, // Set a background color if needed
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1), // Horizontal padding
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the start (left)
          children: [
            // Text at the top left with padding
            Padding(
              padding: const EdgeInsets.only(top: 250), // Space from the top
              child: Text(
                'You are:',
                style: TextStyle(
                  fontSize: size.width * 0.09,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: mainPurple, // Use the primary color for text
                ),
              ),
            ),

            const SizedBox(height: 40), // Space between text and buttons

            // Buttons for Buyer and Seller
            Column(
              children: [
                SizedBox(
                  width:
                      double.infinity, // Button width extends to the full width
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10), // Vertical padding between buttons
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mainPurple, // Button background color
                        padding: const EdgeInsets.symmetric(
                            vertical: 15), // Increased button height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25), // Increased border radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyLayout(ind: 0, page: 0),));
                      },
                      child: Text(
                        'Buyer',
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: size.width * 0.05, // Font size
                          fontFamily: 'Poppins', // Font family
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between buttons
                SizedBox(
                  width:
                      double.infinity, // Button width extends to the full width
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10), // Vertical padding between buttons
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mainPurple, // Button background color
                        padding: const EdgeInsets.symmetric(
                            vertical: 15), // Increased button height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25), // Increased border radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "id_verification");
                      },
                      child: Text(
                        'Seller',
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: size.width * 0.05, // Font size
                          fontFamily: 'Poppins', // Font family
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Spacer(), // Push content upward, leaving space at the bottom
          ],
        ),
      ),
    );
  }
}
