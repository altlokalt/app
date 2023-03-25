import 'package:get/get.dart';
import 'movies1_item_model.dart';

class DetailPageNineModel {
  RxList<Movies1ItemModel> movies1ItemList =
      RxList.generate(3, (index) => Movies1ItemModel());
}
