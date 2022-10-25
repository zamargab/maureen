import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/quiz.dart';
import 'package:mau_love/views/home/home.dart';
import 'package:mau_love/views/shared_widgets/buttons.dart';
import 'package:sizer/sizer.dart';

class FinishQuizDialog extends StatelessWidget {
  const FinishQuizDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(builder: (controller) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.w))),
        content: Container(
          height: 30.h,
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/love1.svg',
                  height: 10.h, color: Theme.of(context).primaryColor),
              SizedBox(height: 2.h),
              Text(
                "Hey Sweetie, Your score is: ${controller.score}/10",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontFamily: "Muli",
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 2.h),
              MainButton(
                title: "Finish",
                callback: () async {
                  Navigator.pop(context);
                  Get.offAll(() => Home(),
                      duration: const Duration(milliseconds: 1000),
                      transition: Transition.circularReveal);
                },
              )
            ],
          ),
        ),
      );
    });
  }
}
