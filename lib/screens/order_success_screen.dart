import 'package:complete_ecomerce_app/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

  class OrderSuccess extends StatelessWidget {
    const OrderSuccess({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                    "images/success.png",
                   height: 250,
                ),
                Text(
                    "Success!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
                ),
                SizedBox(height: 20,),
                Text(
                    "Your order will be delivered soon.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                    "Thank for choosing our app.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => NavigationScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
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
                          "Continue Shopping",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,),
                        )
                    ),
                  ),

                ),
              ),
            ),
          ],
        ),

      );
    }
  }
  