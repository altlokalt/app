import 'package:get/get.dart';
import 'seemoresix_item_model.dart';

class SeeMoreSixModel {
  RxList<SeemoresixItemModel> seemoresixItemList =
      RxList.generate(12, (index) => SeemoresixItemModel());
}
