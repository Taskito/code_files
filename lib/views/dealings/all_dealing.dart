import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskito/views/card/dealing_card.dart';

class AllDealing extends StatelessWidget {
   AllDealing({super.key});
  List<Map> orders=[
    {
      "saller_name":"Sandra Medhat",
      "saller_rating":4,
      "qyn":1,
      "price":200,
      "state":"shiping",
      "servies_type":"logo"

    },
     {
      "saller_name":"Sandra Medhat",
        "saller_rating":3,
      "qyn":1,
      "price":200,
      "state":"shiping",
      "servies_type":"logo"

    }
    ,
     {
      "saller_name":"Sandra Medhat",
      "qyn":1,
        "saller_rating":1,
      "price":200,
      "state":"shiping",
      "servies_type":"logo"

    }
  ];

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
        title: Text("All Dealing"),
        centerTitle: true,
        backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Last Deals",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: orders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DealingCard(saller_name: orders[index]["saller_name"], saller_rating: orders[index]["saller_rating"], qun: orders[index]["qyn"], price: orders[index]["price"], servies_type: orders[index]["servies_type"], state: orders[index]["state"])
                    ;
                  },
                ),
              ),
            ],
          ),
        ), 

      )
    );
  }
}