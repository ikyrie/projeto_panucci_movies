import 'package:flutter/material.dart';
import 'package:panucci_movies/components/movie_screen/parental_rating.dart';

class PosterCard extends StatelessWidget {
  const PosterCard();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
        elevation: 5,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 120,
            maxHeight: 120,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Super Mario Bros. O Filme",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  "Aventura/Comédia",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const ParentalRating(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
