import 'package:complete_ecomerce_app/screens/cart_screen.dart';
import 'package:flutter/material.dart';

import 'container_bottom_model.dart';


  class ProductDetailsPopUp extends StatelessWidget {

    final iStyle = TextStyle(
      color: Colors.black87,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

   List <Color> clrs =[
     Colors.red,
     Colors.green,
     Colors.indigo,
     Colors.amber,
   ];

  
    @override
    Widget build(BuildContext context) {
      return InkWell(
        onTap: (){
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Size:", style: iStyle,),
                                  SizedBox(height: 20,),
                                  Text("Color:", style: iStyle,),
                                  SizedBox(height: 20,),
                                  Text("Text:", style: iStyle,),
                                  SizedBox(height: 20,),

                                ],
                              ),
                              SizedBox(width: 30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 30,),
                                      Text("S", style: iStyle,),
                                      SizedBox(width: 30,),
                                      Text("M", style: iStyle,),
                                      SizedBox(width: 30,),
                                      Text("L", style: iStyle,),
                                      SizedBox(width: 30,),
                                      Text("XL", style: iStyle,),
                                      SizedBox(width: 30,),
                                    ],
                                  ),
                                  SizedBox(height: 18,),
                                  Container(
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 4;  i++)
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 6),
                                            height: 28,
                                            width: 28,
                                            decoration: BoxDecoration(
                                              color: clrs[i],
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 18,),
                                  Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text("-", style: iStyle,),
                                      SizedBox(width: 10,),
                                      Text("1", style: iStyle,),
                                      SizedBox(width: 10,),
                                      Text("+", style: iStyle,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Payment", style: iStyle, ),
                              Text(
                                  "\$40.00",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffDB3022)
                              ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => CartScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                child: Center(
                                    child: Text(
                                      "Check out",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.white,),
                                    )
                                ),
                              ),

                            ),
                          ),
                        ],
                      ),
                ),
              ),
          );
        },
        child:  Container(
          decoration: BoxDecoration(
              color: Color(0xffDB3022),
              borderRadius: BorderRadius.circular(15)
          ),
          width: MediaQuery.of(context).size.width / 1.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Center(
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,),
                )
            ),
          ),

        ),
      );
    }
  }
  