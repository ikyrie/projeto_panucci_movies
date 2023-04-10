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
                child:
                    Image.asset("assets/images/pamonha.png", fit: BoxFit.cover),
              ),
            )),
        Text(
          "Filme da pamonha",
          style: Theme.of(context).textTheme.displaySmall,
        )
      ],
    );
  }
}
