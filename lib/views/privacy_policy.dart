import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Privacy Policy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Added padding for better readability
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 18, color: Colors.black), // Default style
              children: <TextSpan>[
                TextSpan(
                  text: "Effective Date: 1/1/2025\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), 
                ),
                TextSpan(
                  text: "At Taskito, we value your privacy. This policy outlines how we collect, use, and protect your personal information when you use our app.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: "1. Information We Collect\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - Personal Information: Includes your name, email, phone number, payment details, and seller ID for verification.\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "   - Non-Personal Information: Includes app usage data and device information.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: "2. How We Use Your Information\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - Provide and improve services.\n"
                          "   - Verify seller identities.\n"
                          "   - Process transactions and communicate with users.\n"
                          "   - Personalize user experience.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "3. Transaction Fees\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - We take a 10 to 15% commission from each transaction completed by service providers (sellers) on the platform, depending on the task price.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "4. Data Sharing\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - Shared with third-party vendors for service support (e.g., payment processing).\n"
                          "   - Disclosed when legally required.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "5. Data Security\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - We use industry-standard security measures to protect your information.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "6. Your Rights\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - Access or update personal data.\n"
                          "   - Request account deletion.\n"
                          "   - Opt out of marketing communications.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "7. Cookies\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - We use cookies to enhance user experience and track app usage.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "8. Third-Party Links\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - We are not responsible for the privacy practices of third-party websites or services linked through our app.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "9. Communication Policy\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - All communication between buyers and sellers must occur within the Taskito platform.\n"
                          "   - External communication (e.g., personal email, phone calls) to discuss or arrange transactions is strictly prohibited.\n"
                          "   - Violating this policy may result in account suspension or termination.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "10. Changes to the Policy\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - We may update this policy and encourage users to review it periodically.\n\n",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
                TextSpan(
                  text: "11. Contact Us\n",
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold style
                ),
                TextSpan(
                  text: "   - For any questions or concerns, contact Taskito Support at [taskito19@gmail.com].",
                  style: TextStyle(fontWeight: FontWeight.normal), // Normal style
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
