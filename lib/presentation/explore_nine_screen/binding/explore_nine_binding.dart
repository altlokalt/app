import '../controller/explore_nine_controller.dart';
import 'package:get/get.dart';

class ExploreNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreNineController());
  }
}
