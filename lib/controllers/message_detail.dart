import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mau_love/views/messages/message_detail.dart';
import 'package:mau_love/views/messages/widgets/message_one.dart';
import 'package:mau_love/views/messages/widgets/message_three.dart';
import 'package:mau_love/views/messages/widgets/message_two.dart';

class MessageDetailController extends GetxController {
  int selectedIndex = 0;
  Widget buildChild() {
    if (selectedIndex == 0) {
      return const MessageOne();
    } else if (selectedIndex == 1) {
      return const MessageTwo();
    } else {
      return const MessageThree();
    }
  }

  setPage(int index) {
    selectedIndex = index;
    update();
    Get.to(() => MessageDetail(),
        duration: const Duration(milliseconds: 500),
        transition: Transition.circularReveal);
  }
}
