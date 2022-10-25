import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/memories.dart';
import 'package:mau_love/views/memories/images.dart';
import 'package:mau_love/views/shared_widgets/appbar2.dart';
import 'package:mau_love/views/shared_widgets/buttons.dart';
import 'package:sizer/sizer.dart';

class Memories extends StatelessWidget {
  Memories({Key? key}) : super(key: key);
  final ctrl = Get.put(MemoriesController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MemoriesController>(builder: (controller) {
      return Scaffold(
        appBar: const MyAppBar2('Maureen Olah'),
        body: Column(
          children: [
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                memImages.length,
                (index) => controller.buildDot(index, context),
              ),
            ),
            SizedBox(
              height: 72.h,
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: memImages.length,
                onPageChanged: (int index) {
                  controller.currentIndex = index;
                  controller.update();
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(4.w, 5.h, 4.w, 1.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          memImages[i].title,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(height: 2.h),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10.w),
                            child: Image.asset(
                              memImages[i].imgUrl,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40.w,
                  padding: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: MemButton(
                    title: 'Previous',
                    callback: () {
                      controller.pageController!.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
                ),
                SizedBox(width: 4.w),
                Container(
                  width: 40.w,
                  padding: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: MemButton(
                    title: 'Next',
                    callback: () {
                      controller.pageController!.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
    ;
  }
}
