import 'package:get/get.dart';
import 'seemorefive_item_model.dart';

class SeeMoreFiveModel {
  RxList<SeemorefiveItemModel> seemorefiveItemList =
      RxList.generate(9, (index) => SeemorefiveItemModel());
}
