import 'package:get/get.dart';
import 'package:movie_db/modules/likedmovie/likedmovie_controller.dart';

class LikedMovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LikedMovieController(), fenix: true);
  }
}