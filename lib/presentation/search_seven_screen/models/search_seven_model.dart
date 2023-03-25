import 'package:get/get.dart';
import 'searchseven_item_model.dart';

class SearchSevenModel {
  RxList<SearchsevenItemModel> searchsevenItemList =
      RxList.generate(6, (index) => SearchsevenItemModel());
}
