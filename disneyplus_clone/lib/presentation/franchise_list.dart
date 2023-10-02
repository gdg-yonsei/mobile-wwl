import 'package:flutter/material.dart';
import 'package:disneyplus_clone/presentation/franchise_button.dart';

class FranchiseList extends StatelessWidget {
  const FranchiseList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(20), child: Column(
      // @TODO : Flexible 아닌 방법 혹은 Flexible 쓰면서 더 좋은 방법 찾기
      children: [
        Row(
          children: [
            Expanded(child: FranchiseButton(title: "star wars", image: 'assets/image/starwars_logo.png')),
            SizedBox(width: 10,),
            Expanded(child: FranchiseButton(title: "star channel", image: 'assets/image/star_logo.png')),
            SizedBox(width: 10,),
            Expanded(child: FranchiseButton(title: "pixar", image: "assets/image/pixar_logo.png")),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          children: [
            Expanded(child: FranchiseButton(title: "national geographic", image: "assets/image/ng_logo.png")),
            SizedBox(width: 10,),
            Expanded(child: FranchiseButton(title: "marvel", image: 'assets/image/marvel_logo.png')),
            SizedBox(width: 10,),
            Expanded(child: FranchiseButton(title: "disney", image: 'assets/image/disney_white_logo.png'))
          ],
        ),
      ],
    ),);
  }
}

