import 'package:complete_ecomerce_app/screens/forgot_screen.dart';
import 'package:complete_ecomerce_app/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

  class LoginScreen extends StatelessWidget {
    const LoginScreen({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Material(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Image.asset("images/freed.png"),
                  SizedBox(height: 30,),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          border:OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          border:OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child:TextButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(
                                  builder: (context) => ForgotScreen())
                              );
                            },
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  color: Color(0xffFF6969),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 40,),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => NavigationScreen()));
                          },
                          child: Text(
                            "Log in",
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
                      SizedBox(height: 15,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Don't have an Account?",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 15,
                                 ),
                               ),
                               TextButton(
                                   onPressed: (){},
                                   child: Text(
                                     "Sign in",
                                     style: TextStyle(
                                         color: Color(0xffFF6969),
                                         fontSize: 15,
                                         fontWeight: FontWeight.w500
                                     ),
                                   )
                               ),
                             ],
                           )
                    ],
                  ),
                  )
                ],
              )
          ),
        ),
      );
    }
  }
  