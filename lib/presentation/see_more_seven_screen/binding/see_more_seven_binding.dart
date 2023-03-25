import '../controller/see_more_seven_controller.dart';
import 'package:get/get.dart';

class SeeMoreSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreSevenController());
  }
}
