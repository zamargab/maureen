import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:mau_love/controllers/message_detail.dart';
import 'package:mau_love/views/messages/message_detail.dart';
import 'package:mau_love/views/shared_widgets/appbar1.dart';
import 'package:mau_love/views/shared_widgets/appbar2.dart';
import 'package:mau_love/views/messages/widgets/message_home_box.dart';
import 'package:sizer/sizer.dart';

class MessageHome extends StatefulWidget {
  const MessageHome({Key? key}) : super(key: key);

  @override
  State<MessageHome> createState() => _MessageHomeState();
}

class _MessageHomeState extends State<MessageHome>
    with TickerProviderStateMixin {
  final ctrl = Get.put(MessageDetailController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageDetailController>(builder: (controller) {
      return Scaffold(
        appBar: const MyAppBar2('Maureen Olah'),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(4.w),
              child: Column(
                children: [
                  MessageHomeBox(
                    title: "Lorem ipsum dolor",
                    desc: 'Lorem ipsum dolor',
                    callback: () {
                      controller.setPage(0);
                    },
                  ),
                  MessageHomeBox(
                    title: "Lorem ipsum dolor",
                    desc: 'Lorem ipsum dolor',
                    callback: () {
                      controller.setPage(1);
                    },
                  ),
                  MessageHomeBox(
                    title: "Lorem ipsum dolor",
                    desc: 'Lorem ipsum dolor',
                    callback: () {
                      controller.setPage(2);
                    },
                  ),
                ],
              ),
            ),
            AnimatedBackground(
              behaviour: RandomParticleBehaviour(
                  options: ParticleOptions(
                baseColor: Colors.blue,
                spawnOpacity: 0.01,
                opacityChangeRate: 0.25,
                minOpacity: 0.1,
                maxOpacity: 0.2,
                spawnMinSpeed: 30.0,
                spawnMaxSpeed: 70.0,
                spawnMinRadius: 7.0,
                spawnMaxRadius: 15.0,
                particleCount: 70,
                image: Image.asset('assets/images/love1.png'),
              )),
              vsync: this,
              child: Container(),
            ),
          ],
        ),
      );
    });
  }
}
