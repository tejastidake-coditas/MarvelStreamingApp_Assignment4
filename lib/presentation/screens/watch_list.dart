import 'package:flutter/material.dart';
import 'package:marvelstreamingapp_assignment4/core/constants/strings.dart';
import 'package:marvelstreamingapp_assignment4/core/constants/styles.dart';
import 'package:marvelstreamingapp_assignment4/core/constants/colors.dart';
import 'package:marvelstreamingapp_assignment4/data/movie_model.dart';
import 'package:provider/provider.dart';
import 'package:marvelstreamingapp_assignment4/provider/movie_provider.dart';

class WatchList extends StatelessWidget {
  const WatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          AppStrings.watchListTitle,
          style: AppStyles.appBarTitle,
        ),
        backgroundColor: AppColors.appBarBackground,
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: AppColors.white,
          iconSize: 18,
          // TODO(Tejas) : in figma w x h of icon is 8 x 12, so what to use in iconSize
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth:
            24, // TODO(Tejas) : in browser it shows icon slightly to right from the tap area
      ),
      body: Consumer<MovieProvider>(
        builder: (context, provider, child) {
          final favoriteMovies = provider.favoriteMovies;

          return favoriteMovies.isEmpty
              ? noFavorites()
              : showFavorites(favoriteMovies, provider);
        },
      ),
    );
  }

  ListView showFavorites(List<Movie> favoriteMovies, MovieProvider provider) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      itemCount: favoriteMovies.length,
      itemBuilder: (context, index) {
        final movie = favoriteMovies[index];

        return Container(
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: AppColors.watchListCardBackground,
          ),
          child: Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  movie.image,
                  width: 95,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 16.0),
                        child: Text(
                          movie.title,
                          style: AppStyles.movieTitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            provider.removeFavorite(movie);
                          },
                          child: Container(
                            margin: EdgeInsets.all(12),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: AppColors.deleteBackgroundColor,
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Icon(
                              Icons.delete,
                              color: AppColors.black,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Center noFavorites() {
    return Center(
      child: Text(
        AppStrings.noFavorites,
        style: AppStyles.appBarTitle,
      ),
    );
  }
}
