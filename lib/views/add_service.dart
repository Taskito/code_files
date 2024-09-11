import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/components/main_txt_field.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class AddService extends StatelessWidget {
  AddService({super.key});
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController paymentController = TextEditingController();
  TextEditingController tagsController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Dimensions.setDimensions(context);

    return Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.white,
          title: const Center(
            child: Text(
              "Add a service",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.05)),
          padding: EdgeInsets.all(Dimensions.getWidth(0.05)),
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(96, 158, 158, 158), width: 1),
              borderRadius: BorderRadius.circular(7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (EasyLocalization.of(context)!.locale ==
                      const Locale("ar")) {
                    EasyLocalization.of(context)!.setLocale(const Locale("en"));
                  } else {
                    EasyLocalization.of(context)!.setLocale(const Locale("ar"));
                  }
                },
                child: Text(context.tr("change_language")),
              ),
              const Text(
                "Service Details",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                "write down those information about your service",
                style: TextStyle(fontSize: 20),
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    const Text("Job title",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                      hintText: "Enter a job title for this service..",
                      controller: jobTitleController,
                      validator: (value) {
                        if (value == null || value.length < 5) {
                          return "Invalid job title";
                        }
                      },
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    const Text("Price",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                      hintText: "Enter the service's price..",
                      controller: priceController,
                      validator: (value) {
                        if (value == null || value.length < 1) {
                          return "Enter the price please!";
                        }
                      },
                      onChange: (value) {
                        return "fvsjv";
                      },
                    ),
                    const Text(
                      "-15% for Taskito Commission",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    const Text("Category",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                        hintText: "Enter a job title for this service..",
                        controller: categoryController),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    const Text("Payment Method",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                        hintText: "Enter a job title for this service..",
                        controller: paymentController),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    const Text("Tags",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                        hintText: "Enter 5 words that express your service",
                        controller: tagsController),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    const Text("Service Description",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    TextFormField(
                        maxLines: 4,
                        decoration: InputDecoration(
                            hintText: "Enter a description for this service..",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color:
                                        Color.fromARGB(183, 224, 224, 224)))),
                        controller: descriptionController),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: mainPurple,
                        // padding: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(0.2)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: SizedBox(
                        width: Dimensions.getWidth(0.3),
                        child: const Row(
                          children: [
                            Icon(Icons.upload_rounded),
                            Text(
                              "Service image",
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(0.1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MainBtnStyle(
                          text: "Post",
                          onPressed: () {},
                          width: Dimensions.getHeight(0.05),
                          customBorderRadius: 10,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
