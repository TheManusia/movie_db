import 'package:get/get.dart';
import 'package:movie_db/modules/watchedmovie/watchedmovie_controller.dart';

class WatchedMovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WatchedMovieController(), fenix: true);
  }

}