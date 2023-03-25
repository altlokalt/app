import '../controller/search_six_controller.dart';
import 'package:get/get.dart';

class SearchSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchSixController());
  }
}
