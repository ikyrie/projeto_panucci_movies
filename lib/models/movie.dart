class Movie {
  const Movie({required this.name, required this.classification, required this.duration, required this.sinopse, required this.genre, required this.imageURI, required this.sessions});
    final String name;
    final String classification;
    final String duration;
    final String sinopse;
    final String genre;
    final String imageURI;
    final List<String> sessions;
}
