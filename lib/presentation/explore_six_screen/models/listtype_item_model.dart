import 'package:get/get.dart';
import 'explore_six_screen1_item_model.dart';

class ListtypeItemModel {
  RxList<ExploreSixScreen1ItemModel> exploreSixScreen1ItemList =
      RxList.generate(3, (index) => ExploreSixScreen1ItemModel());

  String? id = "";
}
