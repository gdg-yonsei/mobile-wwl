
import 'package:disneyplus_clone/data/Content.dart';
import 'package:disneyplus_clone/presentation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});

  final Content data = Content(
      titleImage: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/06D1186C11A973373C18AC1489CA55B404E48FB9766E8134C5D5D182A9DB7206/scale?width=2880&aspectRatio=1.78&format=png",
      titleText: "포드 V 페라리",
      description: "실화를 영화화한 작품. 선구적인 자동차 디자이너 캐럴 셸비와 겁 없는 레이서 켄 마일스가 1966년 르망 24시간 레이스에서 엔초 페라리의 레이싱 카에 도전한다. ",
      posterCarousel: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/8D6C06F6BDC6DCCCFD145BEDA6C3ECE9BFD270438C2D3C18267091113328696E/scale?width=800&aspectRatio=1.78&format=jpeg",
      posterDetail: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/517116E247C883871E44D00BD0D88DBB7D8A413A400E3229F27987D0EA591730/scale?width=2880&aspectRatio=1.78&format=jpeg",
      year: 2019,
      runningTime: 153,
      teaserUrl: "https://youtu.be/sn7wcMigCCo?si=3pVr2cYiwXssgad8",
      genre: ["SF", "판타지", "액션/어드벤처"]
  );

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
            child: Column(
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
                Text("${data.genre.join(", ")}", style: TextStyle(color: Colors.grey, fontSize: 14),),
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
                    "자동차 디자이너 캐럴 셀비와 겁 없는 레이서 켄 마일스가 1966년 르망 24시간 레이스에서 엔초 페라리에 도전한다.",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}

