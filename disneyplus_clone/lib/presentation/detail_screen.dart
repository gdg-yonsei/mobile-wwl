
import 'package:disneyplus_clone/data/Content.dart';
import 'package:disneyplus_clone/presentation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

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
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/background.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        body: SafeArea(
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
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}

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
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 400,
        ),
        ConstrainedBox (
          constraints: BoxConstraints (maxHeight: 60, maxWidth: 200),
          child: ConstrainedBox (
            constraints: BoxConstraints (maxHeight: 100, maxWidth: 240),
            child: Container (height: 300, width: 300, child: Image.network(data.titleImage, fit: BoxFit.cover),),
          ),
        ),
        Text("${data.year} • ${data.runningTime}분", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
        // Text("${data.genre.join(", ")}", style: TextStyle(color: Colors.grey, fontSize: 14),),
        SizedBox(height: 10,),
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
              Text("재생", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.transparent,
              ),
              onPressed: () => print('pressed'),
              child: Column(
                children: [
                  Icon(Icons.add),
                  SizedBox(height: 5,),
                  Text("관심 콘텐츠", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(width: 10,),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.transparent,
              ),
              onPressed: () => print('pressed'),
              child: Column(
                children: [
                  Icon(Icons.local_movies),
                  SizedBox(height: 5,),
                  Text("예고편", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(width: 10,),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.transparent,
              ),
              onPressed: () => print('pressed'),
              child: Column(
                children: [
                  Icon(Icons.file_download),
                  SizedBox(height: 5,),
                  Text("저장", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Text(
            data.description,
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    );
  }
}

