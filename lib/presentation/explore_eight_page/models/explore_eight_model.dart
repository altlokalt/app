import 'package:get/get.dart';
import 'categories1_item_model.dart';
import 'listtitle2_item_model.dart';

class ExploreEightModel {
  RxList<Categories1ItemModel> categories1ItemList =
      RxList.generate(4, (index) => Categories1ItemModel());

  RxList<Listtitle2ItemModel> listtitle2ItemList =
      RxList.generate(2, (index) => Listtitle2ItemModel());
}
