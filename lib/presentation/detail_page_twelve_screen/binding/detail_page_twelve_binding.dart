import '../controller/detail_page_twelve_controller.dart';
import 'package:get/get.dart';

class DetailPageTwelveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageTwelveController());
  }
}
