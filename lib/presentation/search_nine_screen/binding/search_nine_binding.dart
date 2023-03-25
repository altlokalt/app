import '../controller/search_nine_controller.dart';
import 'package:get/get.dart';

class SearchNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchNineController());
  }
}
