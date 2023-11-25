import 'package:carousel_slider/carousel_slider.dart';
import 'package:disneyplus_clone/constants.dart';
import 'package:flutter/material.dart';

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
      items: carouselPosters.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.network(
                  i,
                  fit: BoxFit.contain,
                ));
          },
        );
      }).toList(),
    );
  }
}
