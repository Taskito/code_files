import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/card/SallerCard.dart';

class SallerList extends StatefulWidget {
  final String service_id; // ID received from the previous page

  SallerList({required this.service_id});

  @override
  State<SallerList> createState() => _SallerListState();
}

class _SallerListState extends State<SallerList> {
  String searchvalue = "";
  int sallernum = 4;

  List<QueryDocumentSnapshot> sallers = [];

  List<QueryDocumentSnapshot> filteredsallers = [];
  void _getData() async {
    var data = await FirebaseFirestore.instance
        .collection("sallers")
        // replace with your timestamp field
        .where("service_id", isEqualTo: widget.service_id)
        .get();
    sallers = [];
    // for (var element in data.docs) {
    //   print(element.data());
    // }

    sallers.addAll(data.docs);
    filteredsallers=sallers;
    // print(6);
    // for (var element in sallers) {
    //   print(element.data());
    // }
    // print(sallers);

    setState(() {});

    // str.pause();
  }

  @override
  void initState() {
    _getData();
    // filteredsallers = sallers;

    // print("nnn");
    // print((filteredsallers));
    // for (var element in filteredsallers) {
    //   print(element.data());
    // }

    super.initState();
  }

  void _filterProducts(String searchValue) {
    setState(() {
      filteredsallers = sallers
          .where((product) => product["name"]
              .toLowerCase()
              .contains(searchValue.toLowerCase()))
          .toList();
    });
  }

  void _filterProductsrating() {
    setState(() {
      filteredsallers =
          sallers.where((product) => product["rating"] >= 4).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text("Saller Listing"),
        centerTitle: true,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        forceMaterialTransparency: false,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search ',
                        hintStyle:
                            const TextStyle(fontSize: 13, color: Colors.grey),
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 116, 101, 230),
                              width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                      ),
                      onChanged: (value) {
                        _filterProducts(value);
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: IconButton.filled(
                        onPressed: () {
                          _filterProductsrating();
                        },
                        icon: const Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.grey,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(225, 225, 226, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ))),
              const SizedBox(height: 20),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredsallers.length,
              itemBuilder: (context, index) {
                // return Column(
                //   children: [Text(filteredsallers[index]["name"])],
                // );
                return SellerCard(
                  name: filteredsallers[index]["name"],
                  title: filteredsallers[index]["email"],
                  description: filteredsallers[index]["password"],
                  rating: 3, // Example rating
                  isTopPerformer:3 >= 4,
                );
              },
            ),
          ),
          TextButton.icon(
            onPressed: () {
              setState(() {
                sallernum = filteredsallers.length > sallernum * 2
                    ? sallernum * 2
                    : filteredsallers.length;
              });
            },
            label: const Text("See More"),
            icon: const Icon(Icons.arrow_drop_down_outlined),
            style: TextButton.styleFrom(foregroundColor: mainPurple),
            iconAlignment: IconAlignment.end,
          )
        ],
      ),
    );
  }
}
