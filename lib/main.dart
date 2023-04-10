import 'package:flutter/material.dart';
import 'package:panucci_movies/screens/home.dart';
import 'package:panucci_movies/themes/my_theme.dart';

void main() {
  runApp(const PanucciMovies());
}

class PanucciMovies extends StatelessWidget {
  const PanucciMovies({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: Home(),
    );
  }
}
