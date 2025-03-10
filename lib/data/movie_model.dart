class Movie {
  final int id;
  final String title;
  final String description;
  final String image;
  bool isFav;

  Movie(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      this.isFav = false});
}
