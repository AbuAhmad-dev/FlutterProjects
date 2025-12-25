import 'dart:developer';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_developer.com'),
        centerTitle: true,
        actions: [Icon(Icons.developer_board_outlined)],
        leading: Icon(Icons.menu),
        backgroundColor: const Color.fromARGB(255, 255, 174, 68),
      ),
      backgroundColor: const Color.fromARGB(255, 196, 218, 233),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        verticalDirection:VerticalDirection.down, 
        children: [
          Text(
            ('Welcome to the Home Screen!'),
            style: TextStyle(fontSize: 24,
            fontWeight: FontWeight.bold
           ),),
          Text("This is a simple Flutter application.",
          style: TextStyle(fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, size: 50, color: Colors.blue),
              Icon(Icons.person, size: 50, color: Colors.green),
              Icon(Icons.settings, size: 50, color: Colors.orange),
            ],
          ),
          FilledButton(onPressed: () {
            log("welcome to my application");
          },
           child: Text("start from here")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 54, 244, 244)),
            onPressed: () {
           log ("explore more features");
        },
child: Text("explore more")),
        ],
      )
    );
      
  }
}