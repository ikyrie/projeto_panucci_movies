import 'package:flutter/material.dart';
import 'package:panucci_movies/components/tab_bar_movie.dart';

import '../components/custom_back_button.dart';
import '../components/movie_screen/poster.dart';
import '../components/movie_screen/poster_card.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: const [
                Poster(),
                CustomBackButton(),
                PosterCard(),
              ],
            ),
          ),
          const Expanded(child: TabBarMovie())
        ],
      ),
    );
  }
}
