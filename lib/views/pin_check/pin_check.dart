import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/pin_check.dart';
import 'package:mau_love/views/pin_check/widgets/pin_check_box.dart';
import 'package:mau_love/views/pin_check/widgets/pin_dots.dart';
import 'package:sizer/sizer.dart';

class PinCheck extends StatelessWidget {
  PinCheck({Key? key}) : super(key: key);
  final ctrl = Get.put(PinCheckController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PinCheckController>(
        initState: (controller) {},
        builder: (controller) {
          return Scaffold(
            body: Container(
              padding: EdgeInsets.all(4.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 9.h,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 105,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: const CircleAvatar(
                        radius: 100,
                        backgroundImage:
                            AssetImage('assets/images/placeholder.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "Are you Maureen? Please prove it",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black, fontSize: 15.sp),
                  ),
                  SizedBox(height: 3.h),
                  SizedBox(
                      width: 40.w,
                      height: 5.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PinDots(isACtive: controller.pin.isNotEmpty),
                          PinDots(isACtive: controller.pin.length > 1),
                          PinDots(isACtive: controller.pin.length > 2),
                          PinDots(isACtive: controller.pin.length > 3)
                        ],
                      )),
                  SizedBox(height: 3.h),
                  SizedBox(
                    width: 70.w,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PinCheckBox(
                                number: '1',
                                callback: () {
                                  controller.addDigit('1');
                                }),
                            PinCheckBox(
                                number: '2',
                                callback: () {
                                  controller.addDigit('2');
                                }),
                            PinCheckBox(
                                number: '3',
                                callback: () {
                                  controller.addDigit('3');
                                })
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PinCheckBox(
                                number: '4',
                                callback: () {
                                  controller.addDigit('4');
                                }),
                            PinCheckBox(
                                number: '5',
                                callback: () {
                                  controller.addDigit('5');
                                }),
                            PinCheckBox(
                                number: '6',
                                callback: () {
                                  controller.addDigit('6');
                                })
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PinCheckBox(
                                number: '7',
                                callback: () {
                                  controller.addDigit('7');
                                }),
                            PinCheckBox(
                                number: '8',
                                callback: () {
                                  controller.addDigit(
                                    '8',
                                  );
                                }),
                            PinCheckBox(
                              number: '9',
                              callback: () {
                                controller.addDigit('9');
                              },
                            )
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Stack(
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: PinCheckBox(
                                    number: '0',
                                    callback: () {
                                      controller.addDigit('0');
                                    })),
                            Align(
                                alignment: Alignment.topRight,
                                child: PinCheckBox2(number: '7')),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
