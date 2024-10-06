import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_txt_field.dart';
import 'package:taskito/core/style/app_colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
 String _selectedCard = 'Attijarywafa'; 
   bool _acceptTerms = true;
  bool _useAsDefault = false;
  TextEditingController cardname=TextEditingController(); // Default selected card
  TextEditingController cardvailduntill=TextEditingController();
    TextEditingController securitycode=TextEditingController();
      TextEditingController cardnumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Payment"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          // margin: EdgeInsets.all(8),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Select Card',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildCardOption('Attijarywafa', 'assets/images/bank.png'), 
                _buildCardOption('Visa', 'assets/images/visa.png'), // Visa card option
                _buildCardOption('PayPal', 'assets/images/paypall.png'), // PayPal option
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                                // Card Holder
                  Text(
                    "Card holder",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  MainTxtField(hintText: "your card name", controller: cardname,borderRadius: 10,),
                 
                  SizedBox(height: 20),
                      
                  // Card Number
                  Text(
                    "Card number",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                   MainTxtField(hintText: "XXXX XXXX XXXX XXXX", controller: cardnumber,borderRadius: 10,fieldIcon:  Icon(Icons.credit_card),),
                
                  SizedBox(height: 20),
                      
                  // Valid until and Security code
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Valid until",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                              MainTxtField(hintText: "MM/YYYY", controller: cardvailduntill,borderRadius: 10,),
                          
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Security code",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            MainTxtField(hintText: "***", controller: securitycode,borderRadius: 10,),
                          
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                      
                  // Accept terms and conditions
                  Row(
                    children: [
                      Checkbox(
                        value: _acceptTerms,
                        activeColor: mainPurple,
                        onChanged: (value) {
                          setState(() {
                            _acceptTerms = value ?? false;
                          });
                        },
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Accept the ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Term and Conditions',
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                              // You can handle the link tap here
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                      
                  // Use as default payment method
                  Row(
                    children: [
                      Checkbox(
                        activeColor: mainPurple,
                        value: _useAsDefault,
                        onChanged: (value) {
                          setState(() {
                            _useAsDefault = value ?? false;
                          });
                        },
                      ),
                      Text("Use as default payment method"),
                    ],
                  ),
                 SizedBox(height: 40,),
                 SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              // if (_formkey.currentState!.validate()) {
              //   Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(builder: (context) => ShowPosts()),
              //   );
              // }
            },
            child: const Text(
              "Add Card",
              style: TextStyle(fontSize: 20),
            ),
            style: TextButton.styleFrom(
              backgroundColor: mainPurple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            ),
          ),
        ),
                ],
              
                        
                      
                
              ),
            )
          ],
              ),
        ),
      ),
    );
  }

  // Widget to build each card option
  Widget _buildCardOption(String cardType, String imagePath) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedCard = cardType;
          });
        },
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: _selectedCard == cardType ? mainPurple : Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imagePath,
                  height: 40,
                  width: 60, 
                  fit: BoxFit.contain,// Customize image size
                ),
                Radio(
                  value: cardType,
                  groupValue: _selectedCard,
                  activeColor: mainPurple,
                  onChanged: (value) {
                    setState(() {
                      _selectedCard = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}