import 'dart:convert';

import 'package:flutter_challenge/models/movie_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://movies-api.nomadcoders.workers.dev';
  static const String imageBaseUrl = "https://image.tmdb.org/t/p/";

  static const String popular = 'popular';
  static const String nowPlaying = 'now-playing';
  static const String upComing = 'coming-soon';

  static Future<List<MovieModel>> _getMovies(String endpoint) async {
    List<MovieModel> moveiInstances = [];

    final url = Uri.parse('$baseUrl/$endpoint');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> movies = jsonDecode(response.body)['results'];
      for (var movie in movies) {
        moveiInstances.add(MovieModel.fromJson(movie));
      }
      return moveiInstances;
    }
    throw Error();
  }

  static Future<List<MovieModel>> getPopularMovies() => _getMovies(popular);

  static Future<List<MovieModel>> getNowPlayingMovies() =>
      _getMovies(nowPlaying);

  static Future<List<MovieModel>> getUpComingMovies() => _getMovies(upComing);
}
