import 'package:get/get.dart';

import '../controllers/list_controller.dart';
import '../controllers/tap_controller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ListController());
    Get.lazyPut(() => TapController());
  }
}
