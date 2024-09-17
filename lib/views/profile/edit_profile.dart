import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/components/main_txt_field.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  TextEditingController nameController = TextEditingController();
    TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Edit Profile", style: TextStyle(fontWeight: FontWeight.bold),),),
      ),
      body: SingleChildScrollView(
        child: Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05)),
              padding: EdgeInsets.all(Dimensions.getWidth(0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [ClipOval(
                        child: Image.asset(
                          "assets/images/person.jpg",
                          width: Dimensions.getHeight(0.2),
                          height: Dimensions.getHeight(0.2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: Dimensions.getHeight(0.149),
                        left: Dimensions.getWidth(0.29),
                        child: Container(
                          height: Dimensions.getWidth(0.1),
                          width: Dimensions.getWidth(0.1),
                          decoration: BoxDecoration(
                            color: mainPurple,
                            borderRadius: BorderRadius.circular(Dimensions.getWidth(0.2))
                          ),
                          child: IconButton(icon: const Icon(Icons.edit_outlined, color: Colors.white,), onPressed: (){},)))],
                    ),
                    const Text("Sandra Medhat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                  ],
                )
              ),
              SizedBox(height: Dimensions.getHeight(0.02),),
              const Text("Name:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              MainTxtField(hintText: "Sandra Medhat", controller: nameController),
              SizedBox(height: Dimensions.getHeight(0.02),),
              const Text("Email Account:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              MainTxtField(hintText: "SandraMedhat@gmail.com", controller: emailController),
              SizedBox(height: Dimensions.getHeight(0.02),),
              const Text("Adress:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              MainTxtField(hintText: "Egypt - Giza  - Dokki", controller: emailController),
              SizedBox(height: Dimensions.getHeight(0.02),),
              Center(child: MainBtnStyle(text: "Update", onPressed: (){}, width: Dimensions.getWidth(0.2), customBorderRadius: 10,))
            ]
          ,),
        ),
      ),
    );
  }
}