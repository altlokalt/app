import 'package:app/core/app_export.dart';
import 'package:app/presentation/search_eight_screen/models/search_eight_model.dart';
import 'package:flutter/material.dart';

class SearchEightController extends GetxController {
  TextEditingController searchboxController = TextEditingController();

  Rx<SearchEightModel> searchEightModelObj = SearchEightModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchboxController.dispose();
  }
}
