import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mau_love/controllers/poem_detail.dart';
import 'package:mau_love/views/shared_widgets/appbar2.dart';

class PeomDetail extends StatelessWidget {
  const PeomDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PoemDetailController>(
        initState: (controller) {},
        builder: (controller) {
          return Scaffold(
              appBar: const MyAppBar2('Maureen Olah'),
              body: controller.buildChild());
        });
  }
}
