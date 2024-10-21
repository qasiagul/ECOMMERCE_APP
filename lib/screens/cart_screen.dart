import 'package:complete_ecomerce_app/screens/payment_method_screen.dart';
import 'package:complete_ecomerce_app/widgets/container_bottom_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
   

   class CartScreen extends StatelessWidget {

     List imageList = [
       "images/image1.jpg",
       "images/image2.jpg",
       "images/image3.jpg",
       "images/image4.jpg",
     ];

     List productTitle = [
       "Warm Zipper",
       "Knitted Woo!",
       "Zipper Win",
       "Child Win",
     ];

     List prices = [
       "\$300",
       "\$600",
       "\$350",
       "\$60",
     ];
   
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text("Cart"),
           leading: BackButton(),
           backgroundColor: Colors.transparent,
           foregroundColor: Colors.black,
           elevation: 0,
           centerTitle: true,
         ),
         body: SingleChildScrollView(
           child: Padding(
               padding: EdgeInsets.all(20),
             child: Column(
               children: [
                 Container(
                   child: ListView.builder(
                     itemCount: imageList.length,
                       shrinkWrap: true,
                       scrollDirection: Axis.vertical,
                       physics: NeverScrollableScrollPhysics(),

                       itemBuilder: (context, index){
                         return Container(
                           margin: EdgeInsets.symmetric(vertical: 15),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Checkbox(
                                   splashRadius: 20,
                                   activeColor: Color(0xffDB3022),
                                   value: true,
                                   onChanged: (val){}),
                               ClipRRect(
                                 borderRadius: BorderRadius.circular(10),
                                 child: Image.asset(
                                   imageList[index],
                                   height: 80,
                                   width: 80,
                                 ),
                               ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     productTitle[index],
                                     style: TextStyle(
                                       color: Colors.black87,
                                       fontWeight: FontWeight.w900,
                                       fontSize: 18 ,
                                     ),
                                   ),
                                   SizedBox(height: 10,),
                                   Text(
                                       "Hooded jacket",
                                     style: TextStyle(
                                       color: Colors.black26,
                                       fontSize: 16,
                                     ),
                                   ),
                                   SizedBox(height: 10,),
                                   Text(
                                     prices[index],
                                     style: TextStyle(
                                       color: Color(0xffDB3022),
                                       fontSize: 18,
                                       fontWeight: FontWeight.w900,
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Icon(
                                       CupertinoIcons.minus,
                                      color: Colors.green,
                                   ),
                                   SizedBox(width: 20,),
                                   Text(

                                     '1',
                                     style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w700,
                                     ),
                                   ),
                                   SizedBox(width: 5,),
                                   Icon(
                                     CupertinoIcons.plus,
                                     color:Color(0xffDB3022),
                                   )

                                 ],
                               )
                             ],
                           ),
                         );
                       }),
                 ),
                 SizedBox(height: 30,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       "Select All",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                     Checkbox(
                       splashRadius: 20,
                         activeColor: Color(0xffDB3022),
                         value: false,
                         onChanged: (val){}
                     ),
                   ],
                 ),
                 Divider(height: 20,thickness: 1,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       "Total Payment",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                     Text(
                       "\$300,50",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w900,
                         color: Color(0xffDB3022),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 30,),
                 InkWell(
                   onTap: (){
                     Navigator.push(
                         context, MaterialPageRoute(
                         builder: (context) => PaymentMethodScreen()));
                   },
                   child: Container(
                     decoration: BoxDecoration(
                         color: Color(0xffDB3022),
                         borderRadius: BorderRadius.circular(15)
                     ),
                     width: MediaQuery.of(context).size.width / 1.2,
                     child: Padding(
                       padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                       child: Center(
                           child: Text(
                             "Checkout",
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
     }
   }