class MovieModel {
  String id;
  String title;
  String originalTitle;
  String description;
  String director;
  String runningTime;
  String? image;
  String releaseDate;

  MovieModel({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.description,
    required this.director,
    required this.runningTime,
    required this.image,
    required this.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      originalTitle: json['original_title'] ?? '',
      description: json['description'] ?? '',
      director: json['director'] ?? '',
      runningTime: json['running_time'] ?? '',
      image: json["image"] ?? '',
      releaseDate: json['release_date'] ?? '',
    );
  }
}
