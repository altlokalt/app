import 'package:get/get.dart';
import 'movies3_item_model.dart';

class DetailPageElevenModel {
  RxList<Movies3ItemModel> movies3ItemList =
      RxList.generate(3, (index) => Movies3ItemModel());
}
