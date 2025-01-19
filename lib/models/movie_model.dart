class MovieModel {
  final int id;
  final String title, poster;
  final num vote;
  // final double vote_average;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        poster = json['poster_path'],
        vote = json['vote_average'];
}
