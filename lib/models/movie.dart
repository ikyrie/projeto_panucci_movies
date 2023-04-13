class Movie {
  Movie(
      {required this.name,
      required this.classification,
      required this.duration,
      required this.sinopse,
      required this.genre,
      required this.imageURI,
      required this.sessions});
  String? name;
  String? classification;
  String? duration;
  String? sinopse;
  String? genre;
  String? imageURI;
  List<String>? sessions;

  Movie.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    classification = json['classification'].toString();
    duration = json['duration'].toString();
    sinopse = json['sinopse'].toString();
    genre = json['genre'].toString();
    imageURI = json['imageURI'].toString();
    if (json['sessions'] != null) {
      final v = json['sessions'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      sessions = arr0;
    }
  }
}
