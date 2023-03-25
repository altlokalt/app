import '../controller/detail_page_ten_controller.dart';
import 'package:get/get.dart';

class DetailPageTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageTenController());
  }
}
