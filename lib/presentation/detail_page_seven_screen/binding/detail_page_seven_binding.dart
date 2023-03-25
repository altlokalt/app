import '../controller/detail_page_seven_controller.dart';
import 'package:get/get.dart';

class DetailPageSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageSevenController());
  }
}
