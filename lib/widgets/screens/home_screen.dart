import 'package:flutter/material.dart';
import 'package:flutter_challenge/models/movie_model.dart';
import 'package:flutter_challenge/widgets/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MovieModel> popular = [];
  List<MovieModel> nowPlaying = [];
  List<MovieModel> upComing = [];
  bool isLoading = true;

  void waitForMovies() async {
    // Fetch data from API
    popular = await ApiService.getPopularMovies();
    nowPlaying = await ApiService.getNowPlayingMovies();
    upComing = await ApiService.getUpComingMovies();

    // Loading 완료 후 UI 업데이트 (refresh)
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    waitForMovies();
  }

  @override
  Widget build(BuildContext context) {
    print(populars);
    print(isLoading);
    return const Placeholder();
  }
}
