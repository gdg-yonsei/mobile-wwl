import 'package:flutter/material.dart';

import '../page/detail_page.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/image/background.png'),
        fit: BoxFit.cover,
      )),
      child: const Scaffold(
        body: DetailPage(),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
