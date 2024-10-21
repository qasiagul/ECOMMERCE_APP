
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:complete_ecomerce_app/screens/cart_screen.dart';
import 'package:complete_ecomerce_app/screens/favorite_screen.dart';
import 'package:complete_ecomerce_app/screens/home_screen.dart';
import 'package:complete_ecomerce_app/screens/profile_Ui.dart';
import 'package:complete_ecomerce_app/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class NavigationScreen extends StatefulWidget {
   const NavigationScreen({Key? key}) : super(key: key);
 
   @override
   State<NavigationScreen> createState() => _NavigationScreenState();
 }
 
 class _NavigationScreenState extends State<NavigationScreen> {
    
     int PageIndex = 0 ;

     List <Widget> Pages = [
            HomeScreen(),
            CartScreen(),
            FavoriteScreen(),
            ProfileApp(),
     ];

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: IndexedStack(
         index: PageIndex,
         children: Pages,
       ),
       floatingActionButton: SafeArea(
           child: FloatingActionButton(
               onPressed: (){},
             child: Icon(
               Icons.qr_code,
               size: 20,
             ),
             backgroundColor: Color(0xffDB3022),
           )
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: AnimatedBottomNavigationBar(
           icons: [
             CupertinoIcons.home,
             CupertinoIcons.cart,
             CupertinoIcons.heart,
             CupertinoIcons.profile_circled,
           ],
            inactiveColor: Colors.black.withOpacity(0.5),
           activeColor: Color(0xffDB3022),
           gapLocation: GapLocation.center,
           activeIndex: PageIndex,
           notchSmoothness: NotchSmoothness.softEdge,
           leftCornerRadius: 10,
           iconSize: 25,
           rightCornerRadius: 10,
           elevation: 0,
           onTap: (index){
                   setState(() {
                     PageIndex = index;
                   });
           }),
     );
   }
 }
 