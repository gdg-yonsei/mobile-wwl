import 'package:flutter/material.dart';

import '../../data/content.dart';
import '../component/contents_detail_column.dart';

class ContentPage extends StatefulWidget {
  final String contentId;

  const ContentPage({
    super.key,
    required this.contentId,
  });

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  late Future<Content> futureContent;

  @override
  void initState() {
    super.initState();
    setState(() {
      futureContent = fetchContent(widget.contentId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<Content>(
          future: futureContent,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ContentsDetailsColumn(data: snapshot.data!);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
