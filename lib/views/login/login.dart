import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/choose_language/choose_language.dart';
import 'package:taskito/views/forget_password/forget_pass.dart';
import 'package:taskito/views/signup/explore.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text "Log In" at the top
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: size.width * 0.08,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: mainPurple, // Set the color to mainPurple
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Email Text Field
            TextField(
              style:
                  const TextStyle(color: Colors.grey), // Set text color to gray
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: mainPurple), // Focused border color
                ),
                labelStyle:
                    TextStyle(color: mainPurple), // Label color when focused
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              ),
              cursorColor: mainPurple, // Text cursor color
            ),

            const SizedBox(height: 30),

            // Password Text Field with visibility toggle
            TextField(
              style:
                  const TextStyle(color: Colors.grey), // Set text color to gray
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: mainPurple), // Focused border color
                ),
                labelStyle:
                    TextStyle(color: mainPurple), // Label color when focused
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
              cursorColor: mainPurple, // Text cursor color
            ),

            const SizedBox(height: 10),

            // Forgot Password text
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgetPass(),
                    ),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.03,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 80),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.00100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainPurple,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
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
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.04,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600, // Semi-bold text
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // "or login with" text with lines
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or login with',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Social Media Buttons
            Center(
              child: Wrap(
                spacing: size.width * 0.08, // Adjust horizontal spacing
                runSpacing: size.width * 0.09, // Adjust vertical spacing
                children: [
                  _buildSocialMediaButton('assets/images/facebook.png'),
                  _buildSocialMediaButton('assets/images/google.png'),
                  _buildSocialMediaButton('assets/images/apple-logo.png'),
                  _buildSocialMediaButton('assets/images/phone.png'),
                ],
              ),
            ),

            const SizedBox(height: 200),

            // Don't have an account? Sign up text
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: 20), // Ensure it's at the bottom
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const Explore(), // Navigate to Explore
                      ),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.04,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: mainPurple,
                            fontSize: size.width * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold, // Bold text
                          ),
                        ),
                      ],
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

  Widget _buildSocialMediaButton(String assetPath) {
    return GestureDetector(
      onTap: () {
        // Handle social media button press
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 1), // Optional border
        ),
        child: Center(
          child: Image.asset(
            assetPath,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
