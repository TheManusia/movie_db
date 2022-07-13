import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db/modules/likedmovie/likedmovie_view.dart';
import 'package:movie_db/modules/plantowatch/plantowatch_view.dart';
import 'package:movie_db/modules/watchedmovie/watchedmovie_view.dart';
import 'package:movie_db/modules/yourmovie/yourmovie_controller.dart';

class YourMoviesView extends GetView<YourMoviesController> {
  const YourMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Movies'),
        bottom: TabBar(
          controller: controller.tabController,
          tabs: const [
            Tab(
              text: 'Liked Movies',
            ),
            Tab(
              text: 'Watched Movies',
            ),
            Tab(
              text: 'Plan To Watch',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: const [
          LikedMovieView(),
          WatchedMovieView(),
          PlanToWatchView(),
        ],
      ),
    );
  }
}
