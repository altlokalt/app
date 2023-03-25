import 'package:get/get.dart';
import 'movies_item_model.dart';

class DetailPageSevenModel {
  RxList<MoviesItemModel> moviesItemList =
      RxList.generate(3, (index) => MoviesItemModel());
}
