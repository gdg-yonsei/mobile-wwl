import 'package:disneyplus_clone/presentation/screen/detail_screen.dart';
import 'package:disneyplus_clone/presentation/screen/download_screen.dart';
import 'package:disneyplus_clone/presentation/screen/main_screen.dart';
import 'package:disneyplus_clone/presentation/screen/profile_screen.dart';
import 'package:disneyplus_clone/presentation/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'presentation/component/bottom_navigation_bar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

var router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) => Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Scaffold(
                body: child,
                bottomNavigationBar: const CustomBottomNavigationBar(),
                backgroundColor: Colors.transparent,
              )),
          routes: [
            GoRoute(
                path: '/',
                builder: (context, state) => const MainScreen(),
                routes: <RouteBase>[
                  GoRoute(
                      path: 'content',
                      parentNavigatorKey: _rootNavigatorKey,
                      builder: (context, state) => const DetailScreen())
                ]),
            GoRoute(
                path: '/search',
                builder: (context, state) => const SearchScreen()),
            GoRoute(
                path: '/download',
                builder: (context, state) => const DownloadScreen()),
            GoRoute(
                path: '/profile',
                builder: (context, state) => const ProfileScreen()),
          ]),
    ]);
