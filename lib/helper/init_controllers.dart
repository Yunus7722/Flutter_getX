import 'package:flutter_state_management/controllers/tap_controller.dart';
import 'package:get/get.dart';

import '../controllers/list_controller.dart';

Future<void> init_Controllers() async{

  Get.put(()=>ListController());
  Get.put(()=>TapController());
}