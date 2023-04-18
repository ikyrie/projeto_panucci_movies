import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panucci_movies/components/movie_card.dart';

import '../logic/cubit/home_cubit.dart';

final listGenres = [
  'Todos',
  'Ação',
  'Comédia',
  'Drama',
  'Romance',
  'Documentário',
  'Suspense',
  'Terror',
  'Ficção Científica'
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeCubit = HomeCubit();
  final TextEditingController inputController = TextEditingController();

  String dropdownValue = listGenres.first;

  @override
  void initState() {
    homeCubit.getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Text(
                  "Filmes",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Gênero: ',
                        style: Theme.of(context).textTheme.displaySmall),
                    DropdownButton<String>(
                      value: dropdownValue,
                      items: listGenres
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        if (value != null) {
                          if (value == 'Todos') {
                            homeCubit.getMovies();
                          } else {
                            homeCubit.getMoviesByGenre(value);
                          }
                        }
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              BlocBuilder(
                bloc: homeCubit,
                builder: (context, state) {
                  if (state is HomeSuccess) {
                    if (state.movies.isNotEmpty) {
                      return SliverGrid.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisExtent: 240,
                        ),
                        itemBuilder: (context, index) {
                          final movie = state.movies[index];
                          return MovieCard(movie: movie);
                        },
                        itemCount: state.movies.length,
                      );
                    } else {
                      return SliverFillRemaining(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.not_interested, size: 30.0),
                            const SizedBox(height: 16.0),
                            Text('Não existem filmes nessa categoria',
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                      );
                    }
                  } else if (state is HomeLoading) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else if (state is HomeError) {
                    return SliverFillRemaining(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error, size: 30.0),
                          const SizedBox(height: 16.0),
                          Text(state.error,
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    );
                  }
                  return SliverToBoxAdapter(child: Container());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
