import 'package:flutter/material.dart';

import '../../constants.dart';
import '../component/contents_list_section.dart';
import '../component/franchise_list.dart';
import '../component/main_carousel.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
