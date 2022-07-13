import 'package:get/get.dart';
import 'package:movie_db/modules/plantowatch/plantowatch_controller.dart';

class PlanToWatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlanToWatchController());
  }
}