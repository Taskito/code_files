import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/login/login.dart';
import 'package:taskito/views/terms_conditions.dart';
import 'package:taskito/views/upload_image/upload_image.dart'; // Import your app colors

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();

  bool _obscureText1 = true;
  bool _obscureText2 = true;
  String? _passwordStrengthMessage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 120,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: size.height * 0.75,
                decoration: BoxDecoration(
                  color: signupcolor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 140), // Adjust top padding
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05, // Dynamic horizontal padding
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Logo
                        SizedBox(
                          height: size.height *
                              0.1, // 10% of screen height for spacing
                          child: Image.asset(
                            'assets/images/circle logo.png',
                            height: size.height *
                                0.1, // Logo size proportional to screen
                          ),
                        ),
                        const SizedBox(
                            height: 20), // Space between logo and text

                        // "Create an account" text
                        Text(
                          'Create an Account',
                          style: TextStyle(
                            color: mainPurple, // Your primary color
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(
                            height: 20), // Space between text and fields

                        // Username text field
                        _buildTextField(
                          'Username',
                          Icons.person,
                          false,
                          _usernameController,
                          (value) {
                            if (value!.isEmpty) {
                              return 'Username is required';
                            } else if (!RegExp(r'^[a-zA-Z0-9_]+$')
                                .hasMatch(value)) {
                              return 'Username can only contain letters, numbers, and underscores';
                            }
                            return null;
                          },
                          null,
                        ),
                        const SizedBox(height: 10),

                        // Email text field
                        _buildTextField(
                          'Email Address',
                          Icons.email,
                          false,
                          _emailController,
                          (value) {
                            if (value!.isEmpty) {
                              return 'Email is required';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                          null,
                        ),
                        const SizedBox(height: 10),

                        // Password text field
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildTextField(
                              'Password',
                              Icons.lock,
                              _obscureText1,
                              _passwordController,
                              (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                } else if (!RegExp(
                                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                                    .hasMatch(value)) {
                                  setState(() {
                                    _passwordStrengthMessage =
                                        'Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, a number, and a special character';
                                  });
                                } else {
                                  setState(() {
                                    _passwordStrengthMessage = null;
                                  });
                                }
                                return null;
                              },
                              () {
                                setState(() {
                                  _obscureText1 = !_obscureText1;
                                });
                              },
                            ),
                            if (_passwordStrengthMessage != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  _passwordStrengthMessage!,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 10),

                        // Repeat password text field
                        _buildTextField(
                          'Repeat Password',
                          Icons.lock,
                          _obscureText2,
                          _repeatPasswordController,
                          (value) {
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                          () {
                            setState(() {
                              _obscureText2 = !_obscureText2;
                            });
                          },
                        ),
                        const SizedBox(height: 20),

                        // Create Account button
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: mainPurple,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const UploadPhoto(),
                                    ),
                                  );
                                }
                              },
                              child: const Text(
                                'Create Account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // "Already have an account? Login" text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account? ',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Terms and Conditions text with clickable link
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TermsConditions(),
                              ),
                            );
                          },
                          child: RichText(
                            text: TextSpan(
                              text:
                                  'By creating an account or signing in, you agree to our ',
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Terms and Conditions',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    color: mainPurple,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
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

  // Helper method to build the text fields
  Widget _buildTextField(
      String hintText,
      IconData icon,
      bool obscureText,
      TextEditingController controller,
      String? Function(String?)? validator,
      VoidCallback? toggleVisibility) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black54), // Adjust icon color
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
        ),
        suffixIcon: toggleVisibility != null
            ? IconButton(
                icon:
                    Icon(obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: toggleVisibility,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.black38),
        ),
      ),
    );
  }
}
