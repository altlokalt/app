import 'package:app/core/app_export.dart';
import 'package:app/presentation/detail_page_ten_screen/models/detail_page_ten_model.dart';

class DetailPageTenController extends GetxController {
  var passdataconsttestwithanotherargument =
      Get.arguments[NavigationArgs.passdataconsttestwithanotherargument];

  Rx<DetailPageTenModel> detailPageTenModelObj = DetailPageTenModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
