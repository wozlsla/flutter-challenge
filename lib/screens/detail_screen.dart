import 'package:flutter/material.dart';
import 'package:flutter_challenge/consts.dart';
import 'package:flutter_challenge/models/movie_model.dart';
import 'package:flutter_challenge/services/api_service.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final String movieState;
  final MovieModel movie;

  const DetailScreen({
    super.key,
    required this.movieState,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final Future<MovieDetailModel> movieDetail =
        ApiService.getMovieDetailById(movie.id);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
          // color: Colors.black.withValues(alpha: 0.8), // '<' 아이콘 색상 변경
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Back to list',
            style: GoogleFonts.bebasNeue(
              fontSize: Sizes.size28,
              color: Colors.white,
              // color: Colors.black.withValues(alpha: 0.8),
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: movieDetail,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var movie = snapshot.data!;
            return Stack(
              children: [
                Container(
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        '${ApiService.imageBaseUrl}/w200${movie.poster}',
                      ),
                      fit: BoxFit.cover,
                      opacity: 0.6,
                    ),
                  ),
                ),
                Container(
                  width: deviceWidth,
                  color: Colors.black.withValues(alpha: 0.7), // 검정색 덮고 투명도 설정
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start, X
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 400,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          movie.title,
                          style: GoogleFonts.bebasNeue(
                            fontSize: Sizes.size40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          for (var i = 1; i <= 5; i++)
                            Icon(
                              i < (movie.vote / 2).round()
                                  ? Icons.star
                                  : Icons.star_border_outlined,
                              color: Colors.amber,
                              size: Sizes.size24,
                            ),
                        ],
                      ),
                      Gaps.v5,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '${movie.runtime ~/ 60}h ${movie.runtime % 60}min |',
                              style: GoogleFonts.aBeeZee(
                                fontSize: Sizes.size18,
                                color: Colors.white,
                              ),
                            ),
                            Gaps.h10,
                            for (final genre in movie.genres) ...[
                              Text(
                                genre['name'],
                                style: GoogleFonts.aBeeZee(
                                  fontSize: Sizes.size18,
                                  color: Colors.white,
                                ),
                              ),
                              Gaps.h10
                            ],
                            // Text(data)
                          ],
                        ),
                      ),
                      Gaps.v28,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Overview',
                          style: GoogleFonts.bebasNeue(
                            fontSize: Sizes.size36,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        movie.overview,
                        style: GoogleFonts.aBeeZee(
                          fontSize: Sizes.size18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
