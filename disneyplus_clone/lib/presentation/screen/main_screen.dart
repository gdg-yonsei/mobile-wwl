import 'package:disneyplus_clone/presentation/component/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../page/main_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/image/background.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        body: MainPage(),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
