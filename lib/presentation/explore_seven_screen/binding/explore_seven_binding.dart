import '../controller/explore_seven_controller.dart';
import 'package:get/get.dart';

class ExploreSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreSevenController());
  }
}
