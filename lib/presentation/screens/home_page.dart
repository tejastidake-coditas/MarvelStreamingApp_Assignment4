import 'package:flutter/material.dart';
import 'package:marvelstreamingapp_assignment4/core/constants/strings.dart';
import 'package:marvelstreamingapp_assignment4/core/constants/styles.dart';
import 'package:marvelstreamingapp_assignment4/data/movie_repository.dart';
import 'package:marvelstreamingapp_assignment4/presentation/screens/watch_list.dart';
import 'package:marvelstreamingapp_assignment4/core/constants/colors.dart';
import 'package:marvelstreamingapp_assignment4/presentation/widgets/list_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final movieData = MovieRepository().fetchMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          AppStrings.homeTitle,
          style: AppStyles.appBarTitle,
        ),
        backgroundColor: AppColors.appBarBackground,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WatchList()));
              },
              icon: Icon(Icons.favorite),
              color: AppColors.red)
        ],
      ),
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 23.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 102 / 160),
          itemCount: movieData.length,
          itemBuilder: (context, index) => ListCard(
                movie: movieData[index],
              )),
    );
  }
}
