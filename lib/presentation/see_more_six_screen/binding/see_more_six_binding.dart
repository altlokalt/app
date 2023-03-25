import '../controller/see_more_six_controller.dart';
import 'package:get/get.dart';

class SeeMoreSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreSixController());
  }
}
