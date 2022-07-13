import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db/modules/plantowatch/plantowatch_controller.dart';
import 'package:movie_db/modules/yourmovie/component/movie_item.dart';

class PlanToWatchView extends GetView<PlanToWatchController> {
  const PlanToWatchView({Key? key}) : super(key: key);

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
