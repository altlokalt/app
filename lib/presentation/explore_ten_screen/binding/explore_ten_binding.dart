import '../controller/explore_ten_controller.dart';
import 'package:get/get.dart';

class ExploreTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreTenController());
  }
}
