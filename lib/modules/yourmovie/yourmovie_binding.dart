import 'package:get/get.dart';
import 'package:movie_db/modules/likedmovie/likedmovie_controller.dart';
import 'package:movie_db/modules/plantowatch/plantowatch_controller.dart';
import 'package:movie_db/modules/watchedmovie/watchedmovie_controller.dart';
import 'package:movie_db/modules/yourmovie/yourmovie_controller.dart';

class YourMoviesBindng extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourMoviesController(), fenix: true);
    Get.lazyPut(() => LikedMovieController(), fenix: true);
    Get.lazyPut(() => WatchedMovieController(), fenix: true);
    Get.lazyPut(() => PlanToWatchController(), fenix: true);
  }
}