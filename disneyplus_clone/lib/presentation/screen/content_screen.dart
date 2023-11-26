import 'package:flutter/material.dart';

import '../page/detail_page.dart';

class ContentScreen extends StatelessWidget {
  final String contentId;

  const ContentScreen({super.key, required this.contentId});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/image/background.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        body: ContentPage(contentId: contentId),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
