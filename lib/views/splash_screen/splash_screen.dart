import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/splash_screen.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final ctrl = Get.put(SplashSceenController());

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 105,
                backgroundColor: Color(0xFFFFFFFF),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/placeholder.jpg'),
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                "Maureen Olah",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 40.sp, color: Colors.white),
              ),
              Text(
                "A Woman called blessed",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 15.sp, color: Colors.white.withOpacity(0.7)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
