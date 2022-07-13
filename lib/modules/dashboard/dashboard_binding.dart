import 'package:get/get.dart';
import 'package:movie_db/modules/dashboard/dashboard_controller.dart';
import 'package:movie_db/modules/home/home_controller.dart';
import 'package:movie_db/modules/search/search_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => HomeController());
  }

}