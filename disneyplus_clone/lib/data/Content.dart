
class Content {

  final String titleImage;
  final String titleText;
  final String description;
  final String posterCarousel;
  final String posterDetail;
  final int year;
  final int runningTime;
  final String teaserUrl;
  final List<String> genre;

  Content({
    required this.titleImage,
    required this.titleText,
    required this.description,
    required this.posterCarousel,
    required this.posterDetail,
    required this.year,
    required this.runningTime,
    required this.teaserUrl,
    required this.genre,
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
      genre: json['genre'],
    );
  }

}
