import 'package:get/get.dart';
import 'movies2_item_model.dart';

class DetailPageTenModel {
  RxList<Movies2ItemModel> movies2ItemList =
      RxList.generate(3, (index) => Movies2ItemModel());
}
