import '../controller/channel_five_controller.dart';
import 'package:get/get.dart';

class ChannelFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChannelFiveController());
  }
}
