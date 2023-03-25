import '../controller/see_more_eight_controller.dart';
import 'package:get/get.dart';

class SeeMoreEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreEightController());
  }
}
