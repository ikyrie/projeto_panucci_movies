import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panucci_movies/components/movie_screen/tab_bar_movie.dart';
import 'package:panucci_movies/logic/cubit/theme_cubit.dart';

import '../components/movie_screen/poster.dart';
import '../components/movie_screen/poster_card.dart';
import '../models/movie.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    themeCubit.changeTheme(movie.genre);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Poster(imageURL: movie.imageURI),
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
