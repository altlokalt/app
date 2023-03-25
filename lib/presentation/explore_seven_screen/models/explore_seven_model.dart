import 'package:get/get.dart';
import 'listtype1_item_model.dart';
import 'listtitle1_item_model.dart';

class ExploreSevenModel {
  RxList<Listtype1ItemModel> listtype1ItemList =
      RxList.generate(2, (index) => Listtype1ItemModel());

  RxList<Listtitle1ItemModel> listtitle1ItemList =
      RxList.generate(2, (index) => Listtitle1ItemModel());
}
