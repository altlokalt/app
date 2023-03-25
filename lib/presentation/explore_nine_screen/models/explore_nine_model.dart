import 'package:get/get.dart';
import 'categories2_item_model.dart';
import 'listtype2_item_model.dart';

class ExploreNineModel {
  RxList<Categories2ItemModel> categories2ItemList =
      RxList.generate(4, (index) => Categories2ItemModel());

  RxList<Listtype2ItemModel> listtype2ItemList =
      RxList.generate(2, (index) => Listtype2ItemModel());
}
