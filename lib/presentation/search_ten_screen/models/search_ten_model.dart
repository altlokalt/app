import 'package:get/get.dart';
import 'populars_item_model.dart';

class SearchTenModel {
  RxList<PopularsItemModel> popularsItemList =
      RxList.generate(3, (index) => PopularsItemModel());
}
