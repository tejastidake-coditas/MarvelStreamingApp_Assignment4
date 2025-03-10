import 'package:flutter/material.dart';
import 'package:marvelstreamingapp_assignment4/core/constants/colors.dart';

class CustomFavorite extends StatelessWidget {
  final bool isFavorite;

  const CustomFavorite({super.key, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: size / 26,
        width: size / 26,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isFavorite ? AppColors.red : AppColors.white,
        ),
        child: Icon(
          Icons.favorite,
          color: isFavorite ? AppColors.white : AppColors.red,
          size: (size / 26) / 1.4,
        ),
      ),
    );
  }
}
