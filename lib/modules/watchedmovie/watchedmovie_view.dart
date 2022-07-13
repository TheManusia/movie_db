import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db/modules/watchedmovie/watchedmovie_controller.dart';
import 'package:movie_db/modules/yourmovie/component/movie_item.dart';

class WatchedMovieView extends GetView<WatchedMovieController> {
  const WatchedMovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      initialItemCount: controller.movieList.length,
      itemBuilder: (context, index, animation) {
        return SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ),
          ),
          child: MovieItem(
            movie: controller.movieList[index],
            onRemove: () {
              controller.removeMovies(context, index);
            },
          ),
        );
      },
    );
  }
}
