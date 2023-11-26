import 'package:disneyplus_clone/presentation/component/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavbar extends StatelessWidget {
  final Widget child;

  const ScaffoldWithNavbar({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
