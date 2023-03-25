import 'package:get/get.dart';
import 'listtitle_item_model.dart';
import 'listtype_item_model.dart';

class ExploreSixModel {
  RxList<ListtitleItemModel> listtitleItemList =
      RxList.generate(2, (index) => ListtitleItemModel());

  RxList<ListtypeItemModel> listtypeItemList =
      RxList.generate(2, (index) => ListtypeItemModel());
}
