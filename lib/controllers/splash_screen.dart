import 'dart:async';

import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mau_love/views/home/home.dart';
import 'package:mau_love/views/pin_check/pin_check.dart';

class SplashSceenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    displaySpash();
  }

  displaySpash() async {
    Timer(const Duration(seconds: 3), () async {
      Get.off(() => PinCheck(),
          duration: const Duration(milliseconds: 500),
          transition: Transition.circularReveal);
    });
  }
}
