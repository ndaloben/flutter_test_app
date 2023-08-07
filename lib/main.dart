
import 'package:flutter/material.dart';
import 'next_page.dart';

void main() {
  runApp(const MyApp());
}   

class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
    @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
        
    );
  }  
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String buttonName = 'Next Page';
  int currentIndex = 0;
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
          
        ),
        body: Center(child: currentIndex == 0 ? Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const SecondPage();
                 },
                 ),
                 );
                  
                },
                child: Text(buttonName),
              ),
               ElevatedButton(
                onPressed: () {
                 
                  
                },
                child: Text(buttonName),
              ),
            ],
          ),
        ) 
        : GestureDetector(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked;
            });
          },
          child: _isClicked ? Image.asset('images/bite.png') : Image.network('https://www.thoughtco.com/static/3.159.0/images/hp-science,tech,math.png'),
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
      );
  }
}

