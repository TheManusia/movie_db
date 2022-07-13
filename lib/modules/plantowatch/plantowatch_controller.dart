import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db/modules/yourmovie/component/movie_item.dart';

class PlanToWatchController extends GetxController {
  var movieList = <Map<String, String>>[
    {
      'title': 'The Shawshank Redemption',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.3',
      'year': '1994',
      'genre': 'Drama',
    },
    {
      'title': 'The Godfather',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '1972',
      'genre': 'Drama',
    },
    {
      'title': 'The Godfather: Part II',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '1974',
      'genre': 'Drama',
    },
    {
      'title': 'The Dark Knight',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '2008',
      'genre': 'Drama',
    },
    {
      'title': '12 Angry Monkeys',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '1999',
      'genre': 'Drama',
    },
    {
      'title': 'Pulp Fiction',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '1994',
      'genre': 'Drama',
    },
    {
      'title': 'The Matrix',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '1999',
      'genre': 'Drama',
    },
    {
      'title': 'The Matrix Reloaded',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '2003',
      'genre': 'Drama',
    },
    {
      'title': 'The Matrix Revolutions',
      'poster':
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
      'rating': '4.5',
      'year': '2003',
      'genre': 'Drama',
    },
  ].obs;

  void removeMovies(BuildContext context, int index) {
    AnimatedList.of(context).removeItem(index, (context, animation) {
      return SlideTransition(
        position: animation.drive(
          Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ),
        ),
        child: MovieItem(movie: movieList[index]),
      );
    }, duration: const Duration(milliseconds: 300));
    movieList.removeAt(index);
  }

}