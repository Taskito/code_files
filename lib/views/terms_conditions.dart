import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Terms & Conditions",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView( 
        child: Container(
          padding: const EdgeInsets.all(16.0), 
          child: const Text(
            "Terms and Conditions\n"
            "Effective Date: 1/1/2025\n\n"
            "Welcome to Taskito! These Terms govern your use of our app and services.\n\n"
            "Acceptance of Terms: By using Taskito, you agree to these Terms. If you disagree, stop using the app.\n\n"
            "Account Registration: Create an account with accurate information and keep your login details confidential. You must be at least 18 years old.\n\n"
            "Services Offered: Taskito connects buyers with sellers of various services, both online and in-person.\n\n"
            "Fees and Commissions: We charge a 10 to 15% commission on each transaction, depending on the task price. This fee is deducted from the seller's earnings.\n\n"
            "Seller Requirements: Sellers must provide valid ID for verification and comply with applicable laws.\n\n"
            "Payments: All transactions must go through Taskito. Report payment disputes to us for resolution.\n\n"
            "Communication Policy: Communication must occur within Taskito. External communication (e.g., personal email) is prohibited and may lead to account suspension.\n\n"
            "User Conduct: Do not use the app for illegal purposes, post false information, or infringe on intellectual property rights.\n\n"
            "Termination: We may suspend or terminate your account for breaches or fraudulent activities.\n\n"
            "Limitation of Liability: Taskito is not responsible for the quality or legality of services provided by sellers.\n\n"
            "Dispute Resolution: Report disputes to Taskito. Unresolved disputes may be settled through arbitration or small claims court.\n\n"
            "Changes to Terms: We may update these Terms and encourage you to review them periodically.\n\n"
            "Contact Us: For questions, contact Taskito Support at [taskito19@gmail.com].",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
