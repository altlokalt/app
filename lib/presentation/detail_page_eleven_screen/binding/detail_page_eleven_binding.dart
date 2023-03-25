import '../controller/detail_page_eleven_controller.dart';
import 'package:get/get.dart';

class DetailPageElevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageElevenController());
  }
}
