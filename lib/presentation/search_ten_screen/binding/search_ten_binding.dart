import '../controller/search_ten_controller.dart';
import 'package:get/get.dart';

class SearchTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTenController());
  }
}
