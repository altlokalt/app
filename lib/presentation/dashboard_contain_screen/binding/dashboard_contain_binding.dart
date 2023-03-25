import '../controller/dashboard_contain_controller.dart';
import 'package:get/get.dart';

class DashboardContainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardContainController());
  }
}
