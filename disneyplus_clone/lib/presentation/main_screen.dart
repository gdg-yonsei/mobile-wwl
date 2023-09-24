import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Disney%2B_logo.svg/2560px-Disney%2B_logo.svg.png',
          height: 40,
        ),
        backgroundColor: const Color(0xff39416f),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Hello World'),
        )
      ),
      backgroundColor: const Color(0xff39416f),
    );
  }
}

