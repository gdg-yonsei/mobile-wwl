

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


const List<String> posters = [
  "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/8FE73A3917B1AE0AD552FE517A0D568497134E497BD8DB92C091A25BBCD3FC51/badging?width=800&aspectRatio=1.78&format=jpeg&label=disneyplusoriginal", // loki
  "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/A8087978F49D5E75C74DA8A7BD4976E3E978D3D29306EFABCDEA81CB59F9245F/badging?width=800&aspectRatio=NaN&format=jpeg&label=staroriginal", // 무빙
  "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/F18169090415F42CFEE5B4970012FF125B688CEE074153741F7C10EC7284C4C4/badging?width=800&aspectRatio=1.78&format=jpeg&label=disneyplusoriginal", // 아소카
  "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/D9F5661A2E9712A068A24EBB57CF5FD2D0790E60A0E70E40E3E6FD2C74BBDE95/badging?width=800&aspectRatio=1.78&format=jpeg&label=staroriginal", // Kardashians
];


class MainCarousel extends StatelessWidget {
  const MainCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enableInfiniteScroll: true,
        aspectRatio: 1.78,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
      ),
      items: posters.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.network(i, fit: BoxFit.contain,)
            );
          },
        );
      }).toList(),
    );
  }
}