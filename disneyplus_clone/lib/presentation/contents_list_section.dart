
import 'package:flutter/material.dart';

import 'package:disneyplus_clone/presentation/thumbnail_button.dart';

class ContentsListSection extends StatelessWidget {
  const ContentsListSection({
    super.key,
    required this.title,
    required this.images,
  });

  final String title;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              // color: Colors.black,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: images.map((e) => ThumbnailButton(image: e)).toList()
              ),
            )
          ],
        ),
      );
  }
}
