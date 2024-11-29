import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/components/main_btn_style.dart';
import 'package:taskito/core/components/main_txt_field.dart';
import 'package:taskito/core/helpers/dimensions.dart';
import 'package:taskito/core/style/app_colors.dart';

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  TextEditingController jobTitleController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController categoryController = TextEditingController();

  TextEditingController paymentController = TextEditingController();

  TextEditingController tagsController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double? price; 
  String? inputTextPrice;

  List<String> categories = ["Front-end", "Back-end", "Full-Stack", "Graphic design", "App develpoment", "Technical support"];
  String? selectedCategory;

  List<String> paymentMethods = ["Visa", "Master card", "InstaPay", "Vodafone cash"];
  String? selectedMethod;

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
              Text(
                context.tr("service_details"),
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                context.tr("service_info"),
                style: const TextStyle(fontSize: 20),
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    Text(context.tr("job_title"),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                      hintText: context.tr("job_title_hint"),
                      controller: jobTitleController,
                      validator: (value) {
                        if (value == null || value.length < 5) {
                          return context.tr("invalid_job_title");
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    Text(context.tr("price"),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                      hintText: context.tr("price_hint"),
                      controller: priceController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return context.tr("invalid_price");
                        }
                        return null;
                      },
                      onChange: (value) {
                        setState(() {
                          inputTextPrice = value;
                          if(inputTextPrice!.isEmpty){
                            price = null;
                          }else{
                              price = double.parse(inputTextPrice!);
                          }
                        });
                        return null;
                      },
                    ),
                    if(price != null)
                    Text(
                      "${context.tr("You_will_take")} ${price!-(price!*0.15)}",
                      style: const TextStyle(color: Colors.red, fontSize: 15),
                    ),
                    Text(
                      context.tr("commission") + context.tr("EGP"),
                      style: const TextStyle(color: Colors.red, fontSize: 15),
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    Text(context.tr("category"),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    DropdownButtonFormField(
                      hint: Text(context.tr("select_an_option"), style: const TextStyle(color: Colors.grey),),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Color.fromARGB(183, 224, 224, 224))
                          )
                      ),
                      items: categories
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue;
                });
              },
              ),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    Text(context.tr("payment_method"),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                      DropdownButtonFormField(
                      hint: Text(context.tr("select_an_option"), style: const TextStyle(color: Colors.grey),),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Color.fromARGB(183, 224, 224, 224))
                          )
                      ),
                      items: paymentMethods
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedMethod = newValue;
                });
              },
              ),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    Text(context.tr("tags"),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    MainTxtField(
                        hintText: context.tr("tags_hint"),
                        controller: tagsController),
                    SizedBox(
                      height: Dimensions.getHeight(0.02),
                    ),
                    Text(context.tr("service_description"),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: Dimensions.getHeight(0.01),
                    ),
                    TextFormField(
                        maxLines: 4,
                        decoration: InputDecoration(
                            hintText: context.tr("service_description_hint"),
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: SizedBox(
                        width: Dimensions.getWidth(0.3),
                        child: Row(
                          children: [
                            const Icon(Icons.upload_rounded),
                            Text(
                              context.tr("service_image"),
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
                          text: context.tr("post"),
                          onPressed: () {
                            Navigator.pushNamed(context, "service_uploaded_successfully");
                          },
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
