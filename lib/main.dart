import 'package:flutter/material.dart';
import 'package:panucci_movies/screens/home.dart';

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
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: Home(),
    );
  }
}


