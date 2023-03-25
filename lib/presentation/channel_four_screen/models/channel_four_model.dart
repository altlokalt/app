import 'package:get/get.dart';
import 'channelfour_item_model.dart';

class ChannelFourModel {
  RxList<ChannelfourItemModel> channelfourItemList =
      RxList.generate(4, (index) => ChannelfourItemModel());
}
