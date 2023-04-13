import 'package:flutter/material.dart';
import 'package:panucci_movies/components/movie_screen/tab_bar_movie.dart';

import '../components/custom_back_button.dart';
import '../components/movie_screen/poster.dart';
import '../components/movie_screen/poster_card.dart';
import '../models/movie.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Poster(imageURL: movie.imageURI),
                const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 16.0),
                    child: CustomBackButton()),
                PosterCard(
                  title: movie.name,
                  genre: movie.genre,
                  classification: movie.classification,
                  duration: movie.duration,
                ),
              ],
            ),
          ),
          Expanded(child: TabBarMovie(movie: movie)),
        ],
      ),
    );
  }
}
