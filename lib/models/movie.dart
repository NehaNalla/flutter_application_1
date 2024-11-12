class Movie {
  final String title;
  final String thumbnailUrl;
  final String summary;

  Movie({required this.title, required this.thumbnailUrl, required this.summary});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['name'],
      thumbnailUrl: json['image'] != null ? json['image']['medium'] : '',
      summary: json['summary'] ?? "No summary available",
    );
  }
}
