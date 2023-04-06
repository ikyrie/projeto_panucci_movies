import 'package:flutter/material.dart';
import 'package:panucci_movies/components/movie_card.dart';
import 'package:panucci_movies/components/search_input.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(slivers: <Widget>[
            SliverToBoxAdapter(
              child: SearchInput(searchTextController: inputController),
            ),
            SliverToBoxAdapter(
              child: Text(
                "Filmes",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 16),
              itemBuilder: (context, index) => const MovieCard(),
              itemCount: 6,
            ),
          ]),
        ),
      ),
    );
  }
}
