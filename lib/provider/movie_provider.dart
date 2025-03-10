import 'package:flutter/material.dart';
import 'package:marvelstreamingapp_assignment4/data/movie_model.dart';
import 'package:marvelstreamingapp_assignment4/data/movie_repository.dart';

class MovieProvider extends ChangeNotifier {
  final List<Movie> _movies = MovieRepository().fetchMovies();
  final List<Movie> _favoriteMovies = [];

  List<Movie> get movies => _movies;

  List<Movie> get favoriteMovies => _favoriteMovies;

  void toggleFavorite(Movie movie) {
    movie.isFav = !movie.isFav;
    if (movie.isFav) {
      _favoriteMovies.add(movie);
    } else {
      _favoriteMovies.remove(movie);
    }
    notifyListeners();
  }

  void removeFavorite(Movie movie) {
    movie.isFav = false;
    _favoriteMovies.remove(movie);
    notifyListeners();
  }
}
