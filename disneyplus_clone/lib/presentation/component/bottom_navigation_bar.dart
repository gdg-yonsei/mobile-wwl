import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Flutter code sample for [NavigationBar].

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentPageIndex = 0;

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/search')) {
      return 1;
    }
    if (location.startsWith('/download')) {
      return 2;
    }
    if (location.startsWith('/profile')) {
      return 3;
    }
    return 0;
  }

  static _getOnItemTapped(BuildContext context) {
    void onItemtapped(int index) {
      switch (index) {
        case 0:
          GoRouter.of(context).go('/');
          break;
        case 1:
          GoRouter.of(context).go('/search');
          break;
        case 2:
          GoRouter.of(context).go('/download');
          break;
        case 3:
          GoRouter.of(context).go('/profile');
          break;
      }
    }

    return onItemtapped;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: _getOnItemTapped(context),
      indicatorColor: Colors.white,
      backgroundColor: Colors.black38,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      selectedIndex: _calculateSelectedIndex(context),
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        NavigationDestination(
          icon: Icon(Icons.download),
          label: 'Download',
        ),
        NavigationDestination(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
