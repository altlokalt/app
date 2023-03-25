import 'package:get/get.dart';
import 'seemoreeight_item_model.dart';

class SeeMoreEightModel {
  RxList<SeemoreeightItemModel> seemoreeightItemList =
      RxList.generate(12, (index) => SeemoreeightItemModel());
}
