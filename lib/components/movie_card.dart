import 'package:flutter/material.dart';
import 'package:panucci_movies/screens/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 200),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MovieScreen(),
                  ),
                );
              },
              child: Ink(
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/mario_filme.jpg"), fit: BoxFit.cover),),
              ),
            ),
          )),
        Text(
          "Super Mario Bros. O Filme",
          style: Theme.of(context).textTheme.displaySmall,
        )
      ],
    );
  }
}
