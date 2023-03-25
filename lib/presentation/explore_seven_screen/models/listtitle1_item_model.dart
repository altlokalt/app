import 'package:get/get.dart';
import 'explore_seven_screen1_item_model.dart';

class Listtitle1ItemModel {
  RxList<ExploreSevenScreen1ItemModel> exploreSevenScreen1ItemList =
      RxList.generate(3, (index) => ExploreSevenScreen1ItemModel());

  String? id = "";
}
