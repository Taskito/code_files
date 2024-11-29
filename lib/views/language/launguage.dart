import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';

class Launguage extends StatefulWidget {
  const Launguage({super.key});

  @override
  State<Launguage> createState() => _LaunguageState();
}

class _LaunguageState extends State<Launguage> {
  String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'name': 'English', 'flag': '🇺🇸'},
    {'name': 'French', 'flag': '🇫🇷'},
    {'name': 'German', 'flag': '🇩🇪'},
    {'name': 'Chinese', 'flag': '🇨🇳'},
    {'name': 'Japanese', 'flag': '🇯🇵'},
    {'name': 'Turkish', 'flag': '🇹🇷'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton.filled(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: mainPurple,
            ),
            style: IconButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.grey, width: 1)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    left: 8.0, right: 8, top: 5, bottom: 4),
                child: Text(
                  "Choose the language",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: mainPurple),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 8.0, right: 8, top: 0, bottom: 4),
                child: Text(
                    "Don’t worry! It happens. Please enter the email associated with your account."),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 55,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for services',
                      hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 116, 101, 230),
                            width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedLanguage = languages[index]['name']!;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: selectedLanguage == languages[index]['name']
                          //       ? mainPurple
                          //       : Colors.grey,
                          // ),
                          borderRadius: BorderRadius.circular(selectedLanguage == languages[index]['name']?30:0),
                          color: selectedLanguage == languages[index]['name']?const Color.fromRGBO(231, 231, 233, 1):Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  languages[index]['flag']!,
                                  style: const TextStyle(fontSize: 24),
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  languages[index]['name']!,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            selectedLanguage == languages[index]['name']?

                            const Icon(Icons.check_circle,color: Colors.white,):const Text("")
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
