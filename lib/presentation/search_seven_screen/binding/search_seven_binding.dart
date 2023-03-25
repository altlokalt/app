import '../controller/search_seven_controller.dart';
import 'package:get/get.dart';

class SearchSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchSevenController());
  }
}
