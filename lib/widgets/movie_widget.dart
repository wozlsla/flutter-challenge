import 'package:flutter/material.dart';
import 'package:flutter_challenge/consts.dart';
import 'package:flutter_challenge/models/movie_model.dart';
import 'package:flutter_challenge/screens/detail_screen.dart';
import 'package:flutter_challenge/services/api_service.dart';
import 'package:google_fonts/google_fonts.dart';

class Movie extends StatelessWidget {
  final String movieState;
  final Future<List<MovieModel>> endpoint;

  const Movie({
    super.key,
    required this.movieState,
    required this.endpoint,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: endpoint,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  movieState,
                  style: GoogleFonts.bebasNeue(
                    fontSize: Sizes.size36,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                child: makeList(snapshot),
              )
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  ListView makeList(AsyncSnapshot<List<MovieModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      itemBuilder: (context, index) {
        // print(index);
        var movie = snapshot.data![index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  movieState: movieState,
                  movie: movie,
                ),
              ),
            );
          },
          child: Column(
            children: [
              Container(
                width: 200,
                // height: 200,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child:
                    Image.network('${ApiService.imageBaseUrl}${movie.poster}'),
              ),
              Text(
                movie.title,
                style: GoogleFonts.aBeeZee(
                  color: Colors.white54,
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Gaps.h16,
    );
  }
}
