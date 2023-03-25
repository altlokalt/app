import '../controller/detail_page_eight_controller.dart';
import 'package:get/get.dart';

class DetailPageEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageEightController());
  }
}
