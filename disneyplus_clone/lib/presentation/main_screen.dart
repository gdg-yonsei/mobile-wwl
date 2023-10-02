import 'package:disneyplus_clone/constants.dart';
import 'package:disneyplus_clone/presentation/bottom_navigation_bar.dart';
import 'package:disneyplus_clone/presentation/contents_list_section.dart';
import 'package:disneyplus_clone/presentation/franchise_list.dart';
import 'package:disneyplus_clone/presentation/main_carousel.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  title: Image.asset(
                    'assets/image/logo.png',
                    height: 40,
                  ),
                  centerTitle: true,
                ),
              ];
            },
            body: const SingleChildScrollView(
                child: Column(
                  children: [
                    MainCarousel(),
                    FranchiseList(),
                    ContentsListSection(title: "픽사 오리지널", images: pixarContents),
                    ContentsListSection(title: "스타워즈", images: starwarsContents),
                    ContentsListSection(title: "한국 드라마", images: koreanContents),
                  ],
                ),
              ),
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

