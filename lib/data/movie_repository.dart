import 'package:marvelstreamingapp_assignment4/data/movie_model.dart';

class MovieRepository {
  List<Movie> fetchMovies() {
    return [
      Movie(id: 1, title: 'Movie 1', description: 'Description 1', image: 'assets/images/ant-man.jpeg'),
      Movie(id: 2, title: 'Movie 2', description: 'Description 2', image: 'assets/images/wakanda.jpeg'),
      Movie(id: 3, title: 'Movie 3', description: 'Description 3', image: 'assets/images/love_and_thunder.jpeg'),
      Movie(id: 4, title: 'Movie 4', description: 'Description 4', image: 'assets/images/multiverse.jpeg'),
      Movie(id: 5, title: 'Movie 5', description: 'Description 5', image: 'assets/images/no_way_home.jpeg'),
      Movie(id: 6, title: 'Movie 6', description: 'Description 6', image: 'assets/images/eternals.jpeg'),
      Movie(id: 7, title: 'Movie 7', description: 'Description 7', image: 'assets/images/sang-chi.jpeg'),
      Movie(id: 8, title: 'Movie 8', description: 'Description 8', image: 'assets/images/black-widow.jpeg'),
      Movie(id: 9, title: 'Movie 9', description: 'Description 9', image: 'assets/images/far_from_home.jpeg'),
      Movie(id: 10, title: 'Movie 10', description: 'Description 10', image: 'assets/images/avengers_endgame.jpeg'),
      Movie(id: 11, title: 'Movie 11', description: 'Description 11', image: 'assets/images/captain_marvel.jpeg'),
      Movie(id: 12, title: 'Movie 12', description: 'Description 12', image: 'assets/images/ant_man.jpeg'),
      Movie(id: 13, title: 'Movie 13', description: 'Description 13', image: 'assets/images/infinity_war.jpeg'),
      Movie(id: 14, title: 'Movie 14', description: 'Description 14', image: 'assets/images/black_panther.jpeg'),
      Movie(id: 15, title: 'Movie 15', description: 'Description 15', image: 'assets/images/thor_ragnarok.jpeg'),
      Movie(id: 16, title: 'Movie 14', description: 'Description 14', image: 'assets/images/doctor_strange.jpeg'),
      Movie(id: 17, title: 'Movie 15', description: 'Description 15', image: 'assets/images/spiderman_homecoming.jpeg')
    ];
  }
}
