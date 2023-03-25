import 'package:get/get.dart';
import 'movies4_item_model.dart';

class DetailPageTwelveModel {
  RxList<Movies4ItemModel> movies4ItemList =
      RxList.generate(3, (index) => Movies4ItemModel());
}
