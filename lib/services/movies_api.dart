import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:panucci_movies/models/movie.dart';

Future fetchMovies() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/ikyrie/projeto_panucci_movies/main/lib/movies.json'));

  final json = jsonDecode(response.body);

  return List<Movie>.from(json['filmes'].map((elemento) {
    return Movie.fromJson(elemento);
  }));
}
