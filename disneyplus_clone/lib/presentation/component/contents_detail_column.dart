import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/content.dart';
import 'content_action_row.dart';

class ContentsDetailsColumn extends StatelessWidget {
  const ContentsDetailsColumn({
    super.key,
    required this.data,
  });

  final Content data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              alignment: Alignment.center,
              image: NetworkImage(data.posterDetail),
              fit: BoxFit.contain,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 400,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 100, maxWidth: 240),
          child: AspectRatio(
              aspectRatio: 1.78,
              child: Container(
                height: 300,
                width: 300,
                child: Image.network(data.titleImage, fit: BoxFit.cover),
              )),
        ),
        Text(
          "${data.year} • ${data.runningTime}분",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        // Text("${data.genre.join(", ")}", style: TextStyle(color: Colors.grey, fontSize: 14),),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // background (button) color
            foregroundColor: Colors.black, // foreground (text) color
            minimumSize: Size.fromHeight(48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () => launchUrl(Uri.parse(data.teaserUrl)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.up,
            children: [
              Icon(Icons.play_arrow),
              Text(
                "재생",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ContentActionRow(),
        SizedBox(
          height: 10,
        ),
        Text(
          data.description,
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    );
  }
}
