import 'package:disneyplus_clone/provider/downloaded_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DownloadedContentsProvider>(
      builder: (context, provider, child) {
        final contents = provider.downloadedContents;

        return Center(
          child: Text('Downloaded contents : ${contents.join(', ')}',
              style: const TextStyle(color: Colors.white)),
        );
      },
    );
  }
}
