import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panucci_movies/logic/cubit/theme_cubit.dart';
import 'package:panucci_movies/screens/home.dart';

void main() {
  runApp(const PanucciMovies());
}

class PanucciMovies extends StatelessWidget {
  const PanucciMovies({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) { 
          return MaterialApp(
            title: 'Flutter Demo',
            theme: state,
            home: const Home(),
          );
        }
      ),
    );
  }
}
