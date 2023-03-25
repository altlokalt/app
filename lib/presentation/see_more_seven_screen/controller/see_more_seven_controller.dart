import 'package:app/core/app_export.dart';
import 'package:app/presentation/see_more_seven_screen/models/see_more_seven_model.dart';
import 'package:flutter/material.dart';

class SeeMoreSevenController extends GetxController {
  var consttestdataargument =
      Get.arguments[NavigationArgs.consttestdataargument];

  TextEditingController searchController = TextEditingController();

  Rx<SeeMoreSevenModel> seeMoreSevenModelObj = SeeMoreSevenModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
