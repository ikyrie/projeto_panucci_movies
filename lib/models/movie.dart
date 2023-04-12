class Movie {
  const Movie({required this.name, required this.classification, required this.duration, required this.sinopse, required this.genre, required this.imageURI, required this.sessions});
    final String name;
    final String classification;
    final String duration;
    final String sinopse;
    final String genre;
    final String imageURI;
    final List<String> sessions;
    static Map<String, double> prices = {"meia": 12.0, "inteira": 24.0};
}
