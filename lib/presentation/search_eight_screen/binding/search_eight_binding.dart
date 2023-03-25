import '../controller/search_eight_controller.dart';
import 'package:get/get.dart';

class SearchEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchEightController());
  }
}
