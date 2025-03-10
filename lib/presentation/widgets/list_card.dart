import 'package:flutter/material.dart';
import 'package:marvelstreamingapp_assignment4/data/movie_model.dart';
import 'package:marvelstreamingapp_assignment4/presentation/widgets/custom_favorite.dart';
import 'package:provider/provider.dart';

import 'package:marvelstreamingapp_assignment4/provider/movie_provider.dart';

class ListCard extends StatelessWidget {
  final Movie movie;

  const ListCard({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(movie.image),
        Positioned(
          top: 0,
          right: 0,
          child: Consumer<MovieProvider>(
            builder: (context, provider, child) {
              return InkWell(
                onTap: () {
                  provider.toggleFavorite(movie);
                },
                child: CustomFavorite(isFavorite: movie.isFav),
              );
            },
          ),
        ),
      ],
    );
  }
}
