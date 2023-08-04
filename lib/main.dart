import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}  

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        body: const Center(child: Text('Body'),),

        bottomNavigationBar:BottomNavigationBar(
          items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home,
            color: Color.fromARGB(0, 5, 5, 243),
            ),
          ),
          BottomNavigationBarItem(
            label: 'settings',
            icon: Icon(Icons.settings,
            color: Colors.deepOrange,
            ),
            ),
        ],
        ),
      ),
         
    );
  }
}