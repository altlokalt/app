import '../controller/channel_four_controller.dart';
import 'package:get/get.dart';

class ChannelFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChannelFourController());
  }
}
