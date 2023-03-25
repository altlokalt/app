import 'package:get/get.dart';
import 'specials_item_model.dart';
import 'upcoming_item_model.dart';
import 'featured_item_model.dart';
import 'upcoming1_item_model.dart';
import 'categories_item_model.dart';
import 'special_item_model.dart';

class DashboardModel {
  RxList<SpecialsItemModel> specialsItemList =
      RxList.generate(4, (index) => SpecialsItemModel());

  RxList<UpcomingItemModel> upcomingItemList =
      RxList.generate(4, (index) => UpcomingItemModel());

  RxList<FeaturedItemModel> featuredItemList =
      RxList.generate(4, (index) => FeaturedItemModel());

  RxList<Upcoming1ItemModel> upcoming1ItemList =
      RxList.generate(4, (index) => Upcoming1ItemModel());

  RxList<CategoriesItemModel> categoriesItemList =
      RxList.generate(4, (index) => CategoriesItemModel());

  RxList<SpecialItemModel> specialItemList =
      RxList.generate(4, (index) => SpecialItemModel());
}
