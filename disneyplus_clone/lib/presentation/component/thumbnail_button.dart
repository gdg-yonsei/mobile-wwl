import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThumbnailButton extends StatelessWidget {
  const ThumbnailButton({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    const contentId = 'JMSYV3BljtddojtrX8fk';

    return MaterialButton(
      padding: const EdgeInsets.only(right: 10),
      child: Image.network(
        image,
        fit: BoxFit.fitWidth,
      ),
      onPressed: () => GoRouter.of(context)
          .goNamed('content', pathParameters: {'contentId': contentId}),
    );
  }
}