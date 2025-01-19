import 'package:flutter/material.dart';
import 'package:flutter_challenge/consts.dart';
import 'package:flutter_challenge/models/movie_model.dart';
import 'package:flutter_challenge/services/api_service.dart';
import 'package:flutter_challenge/widgets/movie_widget.dart';
import 'package:google_fonts/google_fonts.dart';

// const Color primaryColor = Color(0xff202123);
const Color primaryColor = Color(0xff000000);
const double iconSize = 34;

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<MovieModel>> popular = ApiService.getPopularMovies();
  Future<List<MovieModel>> nowPlaying = ApiService.getNowPlayingMovies();
  Future<List<MovieModel>> upComing = ApiService.getUpComingMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leadingWidth: 200,
        leading: Center(
          child: Text(
            'Moviestagram',
            style: GoogleFonts.lobster(
              fontSize: 30,
              color: Color(0xffF5F5F5),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_rounded,
                size: 34,
                color: Color(0xffF5F5F5),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          MovieCard(movieState: 'Popular', endpoint: popular),
          MovieCard(movieState: 'Now Playing', endpoint: nowPlaying),
          MovieCard(movieState: 'Upcoming', endpoint: upComing),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xffF5F5F5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: iconSize,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              size: iconSize,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: iconSize,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_rounded,
              size: iconSize,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: ClipOval(
              child: Transform.scale(
                scale: 1.4, // scale 조정
                child: Image.network(
                  'https://github.com/user-attachments/assets/a6421c92-2897-4991-9011-23d8e829e76a',
                  width: 40, // 크기 고정
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
