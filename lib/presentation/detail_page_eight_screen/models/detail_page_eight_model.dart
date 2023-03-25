import 'package:get/get.dart';
import 'movies5_item_model.dart';

class DetailPageEightModel {
  RxList<Movies5ItemModel> movies5ItemList =
      RxList.generate(3, (index) => Movies5ItemModel());
}
