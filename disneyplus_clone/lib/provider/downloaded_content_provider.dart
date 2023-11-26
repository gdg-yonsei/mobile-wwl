import 'package:flutter/foundation.dart';

class DownloadedContentsProvider with ChangeNotifier {
  final List<String> _downloadedContents = [];

  List<String> get downloadedContents => _downloadedContents;

  void addDownloadedContent(String content) {
    _downloadedContents.add(content);
    notifyListeners();
  }

  void removeDownloadedContent(String content) {
    _downloadedContents.remove(content);
    notifyListeners();
  }

  bool isDownloaded(String content) {
    return _downloadedContents.contains(content);
  }
}
