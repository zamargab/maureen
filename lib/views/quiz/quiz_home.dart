import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/quiz.dart';
import 'package:mau_love/views/quiz/questions.dart';
import 'package:mau_love/views/quiz/widgets/answer_box.dart';
import 'package:mau_love/views/shared_widgets/appbar2.dart';
import 'package:mau_love/views/shared_widgets/buttons.dart';
import 'package:sizer/sizer.dart';

class QuizHome extends StatelessWidget {
  QuizHome({Key? key}) : super(key: key);
  final ctrl = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
        initState: (controller) {},
        builder: (controller) {
          return Scaffold(
            appBar: const MyAppBar2('Maureen Olah'),
            body: Column(
              children: [
                SizedBox(height: 3.h),
                Text(
                  'MauRiel Quiz',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 16.sp, color: Colors.black),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => controller.buildDot(index, context),
                  ),
                ),
                SizedBox(
                  height: 55.h,
                  child: PageView.builder(
                    controller: controller.pageController,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      controller.currentIndex = index;
                      controller.update();
                    },
                    itemBuilder: (_, i) {
                      return Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(4.w, 5.h, 4.w, 5.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  contents[i].question,
                                  textAlign: TextAlign.left,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          fontSize: 16.sp, color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 2.h),
                              AnswerBox(
                                letter: 'A',
                                answer: contents[i].a,
                                callback: () {
                                  controller.setAns(1);
                                },
                                active: controller.isA,
                              ),
                              AnswerBox(
                                letter: 'B',
                                answer: contents[i].b,
                                callback: () {
                                  controller.setAns(2);
                                },
                                active: controller.isB,
                              ),
                              AnswerBox(
                                letter: 'C',
                                answer: contents[i].c,
                                callback: () {
                                  controller.setAns(3);
                                },
                                active: controller.isC,
                              ),
                              AnswerBox(
                                letter: 'D',
                                answer: contents[i].d,
                                callback: () {
                                  controller.setAns(4);
                                },
                                active: controller.isD,
                              ),
                              SizedBox(height: 2.h),
                              SizedBox(height: 2.h),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: MainButton(
                    title: controller.currentIndex == contents.length - 1
                        ? "Finish"
                        : "Next",
                    callback: () {
                      if (controller.currentIndex == contents.length - 1) {
                        controller.finishQuiz(context);
                      }
                      controller.proceedToNext(controller.currentIndex);
                      controller.pageController!.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
                )
              ],
            ),
          );
        });
    ;
  }
}
