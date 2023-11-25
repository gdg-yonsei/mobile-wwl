import 'package:flutter/material.dart';

import '../../data/Content.dart';
import '../component/contents_detail_column.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Future<Content> futureContent;

  @override
  void initState() {
    super.initState();
    futureContent = fetchContent();
    // print(futureContent);
    setState(() {
      futureContent = fetchContent();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<Content>(
          future: futureContent,
          builder: (context, snapshot) {
            print(snapshot.hasData);

            if (snapshot.hasData) {
              return ContentsDetailsColumn(data: snapshot.data!);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
