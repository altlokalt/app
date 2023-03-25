import 'package:app/core/app_export.dart';
import 'package:app/presentation/dashboard_contain_screen/models/dashboard_contain_model.dart';
import 'package:app/widgets/custom_bottom_bar.dart';

class DashboardContainController extends GetxController {
  Rx<DashboardContainModel> dashboardContainModelObj =
      DashboardContainModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
