import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: const Center(
        child: Card(
          color: Colors.green,
          child: Text('This is a flutter test app'),
          ),
      ),
    );
  }
}