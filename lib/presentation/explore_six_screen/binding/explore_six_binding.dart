import '../controller/explore_six_controller.dart';
import 'package:get/get.dart';

class ExploreSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreSixController());
  }
}
