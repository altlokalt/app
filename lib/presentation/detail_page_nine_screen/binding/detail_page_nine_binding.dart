import '../controller/detail_page_nine_controller.dart';
import 'package:get/get.dart';

class DetailPageNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageNineController());
  }
}
