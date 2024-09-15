import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/buyer_or_seller/choose.dart'; // Import the ChooseTrip class

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: mainGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the start (left)
          children: [
            // Title text aligned at the top with reduced space from the top
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.2), // Reduced space from the top
              child: Text(
                'Choose Your Language :',
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  color: mainPurple,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start, // Align text to the start
              ),
            ),

            const SizedBox(
                height: 40), // Space between title and language options

            // Language selection options
            Column(
              children: [
                _buildLanguageOption(
                  context,
                  'English',
                  'en',
                ),
                _buildLanguageOption(
                  context,
                  'Arabic',
                  'ar',
                ),
              ],
            ),

            const Spacer(), // Push content upward, leaving space for the button

            // Continue button with proper bottom padding
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 50), // Space from the bottom
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainPurple,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChooseTrip()),
                    );
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.05,
                      fontFamily: 'Poppins',
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

  Widget _buildLanguageOption(
      BuildContext context, String language, String code) {
    final size = MediaQuery.of(context).size;
    final isSelected = _selectedLanguage == code;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLanguage = code;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 17),
        padding:
            EdgeInsets.symmetric(vertical: 15, horizontal: size.width * 0.1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: mainPurple, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              language,
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.05,
                fontFamily: 'Poppins',
              ),
            ),
            if (isSelected)
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  color: mainPurple,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
