import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mau_love/views/home/home.dart';

class PinCheckController extends GetxController {
  String pin = '';

  addDigit(String digit) {
    pin = pin + digit;
    update();
    if (pin.length == 4) {
      if (pin == '1111') {
        Get.off(() => Home(),
            duration: const Duration(milliseconds: 500),
            transition: Transition.circularReveal);
      } else {
        Get.snackbar('Error!', "Wrong code",
            isDismissible: true,
            shouldIconPulse: true,
            snackPosition: SnackPosition.TOP,
            backgroundColor: const Color(0xFFFFA8B5),
            colorText: const Color(0xFFFFFFFF),
            duration: const Duration(seconds: 3));
      }
    }
  }

  deleteDigit() {
    if (pin.isNotEmpty) {
      pin = pin.substring(0, pin.length - 1);
      update();
    }
  }
}
