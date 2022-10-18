import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/views/poems/poem_detail.dart';
import 'package:mau_love/views/poems/widgets/poem_four.dart';
import 'package:mau_love/views/poems/widgets/poem_one.dart';
import 'package:mau_love/views/poems/widgets/poem_three.dart';
import 'package:mau_love/views/poems/widgets/poem_two.dart';

class PoemDetailController extends GetxController {
  int selectedIndex = 0;
  Widget buildChild() {
    switch (selectedIndex) {
      case 0:
        return const PoemOne();

      case 1:
        return const PoemTwo();

      case 2:
        return const PoemThree();

      case 3:
        return const PoemFour();

      default:
        return Container();
    }
  }

  setPage(int index) {
    selectedIndex = index;
    update();
    Get.to(() => PeomDetail(),
        duration: const Duration(milliseconds: 700),
        transition: Transition.circularReveal);
  }
}
