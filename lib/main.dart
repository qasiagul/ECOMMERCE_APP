import 'package:complete_ecomerce_app/screens/login_screen.dart';
import 'package:complete_ecomerce_app/screens/navigation_screen.dart';
import 'package:complete_ecomerce_app/screens/onboarding_screen.dart';
import 'package:complete_ecomerce_app/screens/payment_method_screen.dart';
import 'package:complete_ecomerce_app/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:" ECommerce Shopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: Color(0xffEF6969)
      ),
      home:SplashScreen(),
    );
  }
}
