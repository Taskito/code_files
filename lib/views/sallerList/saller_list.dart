import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/core/style/app_colors.dart';
import 'package:taskito/views/card/SallerCard.dart';

class SallerList extends StatefulWidget {
  const SallerList({super.key});

  @override
  State<SallerList> createState() => _SallerListState();
}

class _SallerListState extends State<SallerList> {
   
   String searchvalue="";
   int sallernum=4;
  List <Map> saller=[
    {
      "name":"Jinny Oslin",
      "title":"Professional title",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":4,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Computer repairer",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":5,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Professional title",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":3,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Computer repairer",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":2,
      "image":"assets/images/user.png"
    },
      {
      "name":"Jinny Oslin",
      "title":"Professional title",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":5,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Computer repairer",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":4,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Professional title",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":3,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Computer repairer",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":2,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Professional title",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":4,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Computer repairer",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":5,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Professional title",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":3,
      "image":"assets/images/user.png"
    },
    {
      "name":"Jinny Oslin",
      "title":"Computer repairer",
      "jop_desc":"Magna id sint irure in cillum esse ",
      "rating":5,
      "image":"assets/images/user.png"
    },
  ];

  List<Map> filteredProducts = [];

  @override
  void initState() {
    filteredProducts = saller;
    super.initState();
  }
    void _filterProducts(String searchValue) {
    setState(() {
      filteredProducts = saller
          .where((product) => product["title"]
              .toLowerCase()
              .contains(searchValue.toLowerCase()))
          .toList();
    });
  }  void _filterProductsrating() {
    setState(() {
      filteredProducts = saller
          .where((product) => product["rating"]>=4
             )
          .toList();
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
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: mainPurple,
          ),
          style: IconButton.styleFrom(
              backgroundColor: Colors.transparent,
              side: BorderSide(color: Colors.grey, width: 1)),
        ),
        title: Text('Seller Listing'),
        centerTitle: true,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        forceMaterialTransparency: false,
      ),
      backgroundColor: Colors.white,
      body: Expanded(
        child: Column(
          children: [
            // Row(children: [

            //       IconButton.filled(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new),style: IconButton.styleFrom(backgroundColor: Colors.white),),
            //       Text('Seller Listing'),

            // ],),
            SizedBox(
              height: 20,
            ),
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
                              TextStyle(fontSize: 13, color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 116, 101, 230),
                                width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
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
                        margin: EdgeInsets.only(right: 20),
                        child: IconButton.filled(
                          onPressed: () {
                            _filterProductsrating();
                            
                          },
                          icon: Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.grey,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromRGBO(225, 225, 226, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ))),
                SizedBox(
                  height: 20,
                )
              ],
            ),

            Expanded(
              
              child: ListView.builder(
                
                itemCount: sallernum, // Number of sellers
                itemBuilder: (context, index) {
                  // print(filteredProducts.length);
                  return SellerCard(
                    name: filteredProducts[index]["name"],
                    title:filteredProducts[index]["title"],
                    description:filteredProducts[index]["jop_desc"],
                    rating: filteredProducts[index]["rating"], // Example rating
                    isTopPerformer:
                        filteredProducts[index]["rating"]>=4, // Example condition for top performer
                  );
                },
              ),
            
            ),
            TextButton.icon(onPressed: (){
              setState(() {
                sallernum=filteredProducts.length>sallernum*2?sallernum*2:filteredProducts.length;
              });
            }, label: Text("See More",),icon: Icon(Icons.arrow_drop_down_outlined),style: TextButton.styleFrom(foregroundColor: mainPurple),iconAlignment: IconAlignment.end,)
          ],
        ),
      ),
    );
  }
}
