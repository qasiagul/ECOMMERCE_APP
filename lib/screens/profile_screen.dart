import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  static const String id = 'second_screen';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder:(context , index){
                return const ListTile(
                  leading:CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/3756861/pexels-photo-3756861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Qasia Gulraiz'),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}