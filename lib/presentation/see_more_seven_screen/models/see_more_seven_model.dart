import 'package:get/get.dart';
import 'seemoreseven_item_model.dart';

class SeeMoreSevenModel {
  RxList<SeemoresevenItemModel> seemoresevenItemList =
      RxList.generate(12, (index) => SeemoresevenItemModel());
}
