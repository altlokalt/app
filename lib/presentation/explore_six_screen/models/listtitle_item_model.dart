import 'package:get/get.dart';
import 'explore_six_screen_item_model.dart';

class ListtitleItemModel {
  RxList<ExploreSixScreenItemModel> exploreSixScreenItemList =
      RxList.generate(3, (index) => ExploreSixScreenItemModel());

  String? id = "";
}
