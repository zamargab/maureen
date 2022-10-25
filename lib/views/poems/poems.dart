import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/poem_detail.dart';
import 'package:mau_love/views/shared_widgets/appbar2.dart';
import 'package:sizer/sizer.dart';

import 'widgets/poem_box.dart';

class PoemsHome extends StatefulWidget {
  const PoemsHome({Key? key}) : super(key: key);

  @override
  State<PoemsHome> createState() => _PoemsHomeState();
}

class _PoemsHomeState extends State<PoemsHome> with TickerProviderStateMixin {
  final ctrl = Get.put(PoemDetailController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PoemDetailController>(builder: (controller) {
      return Scaffold(
        appBar: const MyAppBar2('Maureen Olah'),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(4.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PoemHomeBox(
                        title: "Lorem ipsum",
                        desc: 'Lorem ipsum dolor',
                        callback: () {
                          controller.setPage(0);
                        },
                      ),
                      PoemHomeBox(
                        title: "Lorem ipsum",
                        desc: 'Lorem ipsum dolor',
                        callback: () {
                          controller.setPage(1);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PoemHomeBox(
                        title: "Lorem ipsum",
                        desc: 'Lorem ipsum dolor',
                        callback: () {
                          controller.setPage(2);
                        },
                      ),
                      PoemHomeBox(
                        title: "Lorem ipsum",
                        desc: 'Lorem ipsum dolor',
                        callback: () {
                          controller.setPage(3);
                        },
                      ),
                    ],
                  )
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
