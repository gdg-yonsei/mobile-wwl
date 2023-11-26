import 'package:disneyplus_clone/provider/downloaded_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ContentActionRow extends StatelessWidget {
  const ContentActionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => print('pressed'),
          child: const Column(
            children: [
              Icon(Icons.add),
              SizedBox(
                height: 5,
              ),
              Text(
                "관심 콘텐츠",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => print('pressed'),
          child: const Column(
            children: [
              Icon(Icons.local_movies),
              SizedBox(
                height: 5,
              ),
              Text(
                "예고편",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Consumer<DownloadedContentsProvider>(
            builder: (context, provider, child) {
          final contentId =
              GoRouterState.of(context).pathParameters['contentId'];

          final isDownloaded = provider.isDownloaded(contentId!);

          return TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {
              if (isDownloaded) {
                provider.removeDownloadedContent(contentId);
              } else {
                provider.addDownloadedContent(contentId);
              }
            },
            child: Column(
              children: [
                Icon(isDownloaded
                    ? Icons.file_download_done
                    : Icons.file_download),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "저장",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
