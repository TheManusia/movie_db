import 'package:get/get.dart';
import 'package:movie_db/modules/dashboard/dashboard_controller.dart';
import 'package:movie_db/modules/home/home_controller.dart';
import 'package:movie_db/modules/likedmovie/likedmovie_controller.dart';
import 'package:movie_db/modules/plantowatch/plantowatch_controller.dart';
import 'package:movie_db/modules/search/search_controller.dart';
import 'package:movie_db/modules/watchedmovie/watchedmovie_controller.dart';
import 'package:movie_db/modules/yourmovie/yourmovie_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController(), fenix: true);
    Get.lazyPut(() => SearchController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => YourMoviesController(), fenix: true);

    // Your Movies ViewPage children
    Get.lazyPut(() => LikedMovieController(), fenix: true);
    Get.lazyPut(() => WatchedMovieController(), fenix: true);
    Get.lazyPut(() => PlanToWatchController(), fenix: true);
  }

}