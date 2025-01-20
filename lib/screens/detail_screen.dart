import 'package:flutter/material.dart';
import 'package:flutter_challenge/consts.dart';
import 'package:flutter_challenge/models/movie_detail_model.dart';
import 'package:flutter_challenge/models/movie_model.dart';
import 'package:flutter_challenge/services/api_service.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  final String movieState;
  final MovieModel movie;

  const DetailScreen({
    super.key,
    required this.movieState,
    required this.movie,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<MovieDetailModel> _movieDetail;

  @override
  void initState() {
    super.initState();
    _movieDetail = ApiService.getMovieDetailById(widget.movie.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: NetworkImage(
            '${ApiService.imageBaseUrl}${widget.movie.poster}',
          ),
          fit: BoxFit.cover,
          opacity: 0.6,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withValues(alpha: 0.3),
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white, // '<' 아이콘 색상 변경
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Back to list',
              style: GoogleFonts.bebasNeue(
                fontSize: Sizes.size28,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: FutureBuilder(
          future: _movieDetail,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var movie = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start, X
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
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
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
