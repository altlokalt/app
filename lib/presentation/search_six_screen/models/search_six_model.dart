import 'package:get/get.dart';
import 'movie_item_model.dart';
import 'tvchannels_item_model.dart';
import 'playlist_item_model.dart';

class SearchSixModel {
  RxList<MovieItemModel> movieItemList =
      RxList.generate(3, (index) => MovieItemModel());

  RxList<TvchannelsItemModel> tvchannelsItemList =
      RxList.generate(3, (index) => TvchannelsItemModel());

  RxList<PlaylistItemModel> playlistItemList =
      RxList.generate(3, (index) => PlaylistItemModel());
}
