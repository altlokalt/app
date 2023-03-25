import '../controller/see_more_five_controller.dart';
import 'package:get/get.dart';

class SeeMoreFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreFiveController());
  }
}
