class MovieModel {
  final int id;
  final String title, poster;
  final num vote;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        poster = json['poster_path'],
        vote = json['vote_average'];
}

class MovieDetailModel {
  final int id;
  final String title, poster, overview;
  final num vote;
  final int runtime;
  final List<dynamic> genres;

  MovieDetailModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        poster = json['poster_path'],
        vote = json['vote_average'],
        genres = json['genres'],
        runtime = json['runtime'],
        overview = json['overview'];
}
