import 'package:get/get.dart';
import 'explore_eight_page_item_model.dart';

class Listtitle2ItemModel {
  RxList<ExploreEightPageItemModel> exploreEightPageItemList =
      RxList.generate(3, (index) => ExploreEightPageItemModel());

  String? id = "";
}
