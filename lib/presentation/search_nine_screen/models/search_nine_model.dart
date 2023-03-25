import 'package:get/get.dart';
import 'searchnine_item_model.dart';

class SearchNineModel {
  RxList<SearchnineItemModel> searchnineItemList =
      RxList.generate(9, (index) => SearchnineItemModel());
}
