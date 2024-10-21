import 'package:complete_ecomerce_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';


class ProfileApp extends StatelessWidget {
  static const String id = 'ProfileApp';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xffDB3022),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const     UserAccountsDrawerHeader(

                decoration: BoxDecoration(
                    color: Color(0xffDB3022)
                ),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/3756861/pexels-photo-3756861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                accountName:Text( 'Canila Smith'),
                accountEmail:Text('CalinaSmith633@gmail.com')),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text('Page 1'),
              onTap: (){
                Navigator.pushNamed(context, SecondScreen.id);
              },
            ),
            ListTile(
              leading:const Icon(Icons.calendar_today_outlined),
              title:const Text('Page 2'),
              onTap: (){
                Navigator.pushNamed(context, ProfileApp.id);
              },
            ),
            ListTile(
              leading:const Icon(Icons.login_outlined),
              title:const Text('Logout'),
              onTap: (){
                Navigator.pushNamed(context, SecondScreen.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, SecondScreen.id);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => SecondScreen())
                // );
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/3756861/pexels-photo-3756861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Calina Smith',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque urna vel consectetur.' ,
                      style: TextStyle(  color: Colors.black),
                      textAlign: TextAlign.center,

                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
