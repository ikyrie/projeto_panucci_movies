import 'package:flutter/material.dart';
import 'package:panucci_movies/components/tab_bar.dart';

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
                _Poster(),
                BackButton(),
                _PosterCard(),
              ],
            ),
          ),
          const Expanded(child: TabBarMovie())
        ],
      ),
    );
  }
}

class _PosterCard extends StatelessWidget {
  const _PosterCard();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16),
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
                const _ParentalRating(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Poster extends StatelessWidget {
  const _Poster();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/mario_filme.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      height: MediaQuery.of(context).size.height / 2.6,
    );
  }
}

class _ParentalRating extends StatelessWidget {
  const _ParentalRating();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(8.0)),
          margin: const EdgeInsets.only(right: 8.0),
          child: Center(
              child: Text('L', style: Theme.of(context).textTheme.labelMedium)),
        ),
        Text('01h 32m', style: Theme.of(context).textTheme.displaySmall)
      ],
    );
  }
}
