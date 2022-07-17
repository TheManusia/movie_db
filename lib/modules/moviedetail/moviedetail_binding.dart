import 'package:get/get.dart';
import 'package:movie_db/modules/moviedetail/moviedetail_controller.dart';

class MovieDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailController());
  }
}