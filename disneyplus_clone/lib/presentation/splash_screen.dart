
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {

  final Widget nextScreen;

  const SplashScreen({super.key, required this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: Lottie.asset('assets/lottie/disney_plus.json'),
      ),
      nextScreen: nextScreen,
      backgroundColor: const Color(0xff131a4a),
      splashIconSize: 500,
    );
  }
}
