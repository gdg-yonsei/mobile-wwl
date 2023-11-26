import 'package:cloud_firestore/cloud_firestore.dart';

class Content {
  late final String id;

  final String titleImage;
  final String titleText;
  final String description;
  final String posterCarousel;
  final String posterDetail;
  final int year;
  final int runningTime;
  final String teaserUrl;
  // final List<String> genre;

  Content({
    required this.titleImage,
    required this.titleText,
    required this.description,
    required this.posterCarousel,
    required this.posterDetail,
    required this.year,
    required this.runningTime,
    required this.teaserUrl,
    // required this.genre,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      titleImage: json['title_image'],
      titleText: json['title_text'],
      description: json['description'],
      posterCarousel: json['poster_carousel'],
      posterDetail: json['poster_detail'],
      year: json['year'],
      runningTime: json['running_time'],
      teaserUrl: json['teaser_url'],
      // genre: json['genre'],
    );
  }

  factory Content.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Content(
      titleImage: data?['title_image'],
      titleText: data?['title_text'],
      description: data?['description'],
      posterCarousel: data?['poster_carousel'],
      posterDetail: data?['poster_detail'],
      year: data?['year'],
      runningTime: data?['running_time'],
      teaserUrl: data?['teaser_url'],
      // genre: data?['genre'],
    );
  }
}

Future<List<Content>> getContents() async {
  final contents =
      await FirebaseFirestore.instance.collection('contents').get();
  return contents.docs.map((e) {
    final model = Content.fromFirestore(e, null);
    model.id = e.id;
    return model;
  }).toList();
}

Future<Content> fetchContent(String id) async {
  final response =
      await FirebaseFirestore.instance.collection('contents').doc(id).get();

  final model = Content.fromFirestore(response, null);
  model.id = id;
  return model;
}

Future<List<Content>> fetchContentsByGenre(String genre) async {
  final response = await FirebaseFirestore.instance
      .collection('contents')
      .where('genre', arrayContains: genre)
      .get();

  return response.docs.map((e) {
    final model = Content.fromFirestore(e, null);
    model.id = e.id;
    return model;
  }).toList();
}




// ford v ferrari
// JMSYV3BljtddojtrX8fk

// 인피니티워
// R8Nwp9mpUqz99fbaoxS1
