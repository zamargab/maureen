import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mau_love/controllers/quiz.dart';
import 'package:sizer/sizer.dart';

class AnswerBox extends StatelessWidget {
  const AnswerBox(
      {Key? key,
      required this.letter,
      required this.answer,
      required this.callback,
      required this.active})
      : super(key: key);
  final String letter, answer;
  final VoidCallback callback;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(builder: (controller) {
      return InkWell(
        onTap: callback,
        child: Container(
          margin: EdgeInsets.only(bottom: 2.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(3.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        active ? Theme.of(context).primaryColor : Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text(
                  letter,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 13.sp,
                      color: active
                          ? Colors.white
                          : Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(width: 3.w),
              Text(
                answer,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 13.sp, color: Colors.black),
              ),
            ],
          ),
        ),
      );
    });
  }
}
