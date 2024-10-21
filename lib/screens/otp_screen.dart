import 'package:complete_ecomerce_app/screens/otp_verify_screen.dart';
import 'package:flutter/material.dart';

 class OTPScreen extends StatelessWidget {
   const OTPScreen({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         foregroundColor: Colors.black,
         elevation: 0,
       ),
       body: SingleChildScrollView(
         child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Text(
                  "Please enter your number. you will receive a OTP to  "
                      "create or set a new password via email",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Number",
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => OTPVerifyScreen()));
                    },
                    child: Text(
                      "Send Code",
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(55),
                        backgroundColor: Color(0xffD83022),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    )
                ),
              ],
            ),
         ),
       ),
     );
   }
 }
 