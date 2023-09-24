import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Disney+ Clone')
      home: const SplashScreen()
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Padding(
          padding: const EdgeInsets.only(bottom: 200),
          child: Lottie.asset('assets/lottie/disney_plus.json'),
        ),
        nextScreen: const MainPage(),
        backgroundColor: const Color(0xff131a4a),
        splashIconSize: 500,
      );
  }
}


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disney+ Clone'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}

