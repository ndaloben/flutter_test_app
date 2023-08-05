import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}  

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'click';
  int currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        body: Center(child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = ('Clicked');
                  });
                  
                },
                child: Text(buttonName),
              ),
               ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = ('Clicked');
                  });
                  
                },
                child: Text(buttonName),
              ),
            ],
          ),
        ),
        ),

        bottomNavigationBar:BottomNavigationBar(
          items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings
            ),
            ),
        ],
        currentIndex: currentIndex,   
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        ),
      ),
        
    );
  }  
}