class Movie {
  final String id;
  final String title;
  final String originalTitle;
  final String description;
  final String director;
  final String runningTime;
  final String imageUrl;

  Movie({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.description,
    required this.director,
    required this.runningTime,
    required this.imageUrl,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      originalTitle: json['original_title'] ?? '',
      description: json['description'] ?? '',
      director: json['director'] ?? '',
      runningTime: json['running_time'] ?? '',
      imageUrl: json['image_url'] ?? '',
    );
  }
}
