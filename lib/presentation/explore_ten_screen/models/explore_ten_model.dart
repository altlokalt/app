import 'package:get/get.dart';
import 'trending_item_model.dart';
import 'trending1_item_model.dart';
import 'trending2_item_model.dart';

class ExploreTenModel {
  RxList<TrendingItemModel> trendingItemList =
      RxList.generate(2, (index) => TrendingItemModel());

  RxList<Trending1ItemModel> trending1ItemList =
      RxList.generate(2, (index) => Trending1ItemModel());

  RxList<Trending2ItemModel> trending2ItemList =
      RxList.generate(2, (index) => Trending2ItemModel());
}
