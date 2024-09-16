import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Service Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05)),
              padding: EdgeInsets.all(Dimensions.getWidth(0.05)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/person.jpg",
                          width: Dimensions.getWidth(0.15),
                          height: Dimensions.getWidth(0.15),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text("  Sandra Medhat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
                    ],
                  ),
                  const Divider(),
                  const Text("Profile settings", style: TextStyle(color: textgrey, fontSize: 20),),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Edit profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.arrow_forward_ios_sharp, size: 20,)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Change password", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.arrow_forward_ios_sharp, size: 20,)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add a payment method", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.add, size: 20,)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Push Notifications", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          CupertinoSwitch(
                            value: isChecked1,
                            activeColor: mainPurple,
                            onChanged: (value){
                            setState(() {
                              isChecked1 = value;
                            });
                          })
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Dark mode", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          CupertinoSwitch(
                            value: isChecked2,
                            activeColor: mainPurple,
                            onChanged: (value){
                            setState(() {
                              isChecked2 = value;
                            });
                          })
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  const Text("More", style: TextStyle(color: textgrey, fontSize: 20),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "about_us");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("About us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.arrow_forward_ios_sharp, size: 20,)
                        ],
                      ),
                    ),
                  ),
                                    GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "privacy_policy");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Privacy policy", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.arrow_forward_ios_sharp, size: 20,)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "terms_conditions");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.getHeight(0.02)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Terms & Conditions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.arrow_forward_ios_sharp, size: 20,)
                        ],
                      ),
                    ),
                  ),
                ],),
        )));
  }
}
