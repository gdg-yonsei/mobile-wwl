import 'package:disneyplus_clone/data/content.dart';
import 'package:flutter/material.dart';

import 'package:disneyplus_clone/presentation/component/thumbnail_button.dart';

class ContentsListSection extends StatefulWidget {
  const ContentsListSection({
    super.key,
    required this.title,
    required this.genre,
  });

  final String title;
  final String genre;

  @override
  State<ContentsListSection> createState() => _ContentsListSectionState();
}

class _ContentsListSectionState extends State<ContentsListSection> {
  late Future<List<Content>> contents;

  @override
  void initState() {
    super.initState();
    setState(() {
      contents = fetchContentsByGenre(widget.genre);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Text(
              widget.title,
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
            child: FutureBuilder(
                future: contents,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                        padding: const EdgeInsets.all(8),
                        scrollDirection: Axis.horizontal,
                        children: snapshot.data!
                            .map((e) => ThumbnailButton(
                                  image: e.posterCarousel,
                                  contentId: e.id,
                                ))
                            .toList());
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          )
        ],
      ),
    );
  }
}
