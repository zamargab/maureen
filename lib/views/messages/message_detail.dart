import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mau_love/controllers/message_detail.dart';
import 'package:mau_love/views/shared_widgets/appbar2.dart';

class MessageDetail extends StatelessWidget {
  const MessageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageDetailController>(
        initState: (controller) {},
        builder: (controller) {
          return Scaffold(
              appBar: const MyAppBar2('Maureen Olah'),
              body: controller.buildChild());
        });
  }
}
