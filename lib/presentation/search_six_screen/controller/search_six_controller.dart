import 'package:app/core/app_export.dart';
import 'package:app/presentation/search_six_screen/models/search_six_model.dart';
import 'package:flutter/material.dart';

class SearchSixController extends GetxController {
  TextEditingController searchboxController = TextEditingController();

  Rx<SearchSixModel> searchSixModelObj = SearchSixModel().obs;

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
