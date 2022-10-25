import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mau_love/views/quiz/questions.dart';
import 'package:mau_love/views/quiz/widgets/finish_quiz_dialog.dart';
import 'package:sizer/sizer.dart';

class QuizController extends GetxController {
  int currentIndex = 0;
  PageController? pageController;
  int score = 0;
  bool isA = false;
  bool isB = false;
  bool isC = false;
  bool isD = false;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    super.onClose();
    pageController!.dispose();
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 1.h,
      width: currentIndex == index ? 5.w : 2.w,
      margin: EdgeInsets.only(right: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  setAns(int ansIndex) {
    switch (ansIndex) {
      case 1:
        {
          isA = true;
          isB = false;
          isC = false;
          isD = false;
          update();
        }
        break;

      case 2:
        {
          isA = false;
          isB = true;
          isC = false;
          isD = false;
          update();
        }
        break;

      case 3:
        {
          isA = false;
          isB = false;
          isC = true;
          isD = false;
          update();
        }
        break;

      case 4:
        {
          isA = false;
          isB = false;
          isC = false;
          isD = true;
          update();
        }
        break;

      default:
        {}
        break;
    }
  }

  proceedToNext(int questionIndex) {
    if (isA && contents[questionIndex].ans == 1) {
      score++;
    } else if (isB && contents[questionIndex].ans == 2) {
      score++;
    } else if (isC && contents[questionIndex].ans == 3) {
      score++;
    } else {
      if (contents[questionIndex].ans == 4) {
        score++;
      }
    }
    isA = false;
    isB = false;
    isC = false;
    isD = false;
    update();
  }

  finishQuiz(BuildContext context) {
    displayDialog(context);
  }

  displayDialog(BuildContext context) {
    showAnimatedDialog(
        context: context,
        barrierDismissible: true,
        animationType: DialogTransitionType.slideFromBottom,
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 700),
        builder: (c) {
          return const FinishQuizDialog();
        });
  }
}
