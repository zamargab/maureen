import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/pin_check.dart';
import 'package:sizer/sizer.dart';

class PinCheckBox extends StatelessWidget {
  const PinCheckBox({Key? key, required this.number, required this.callback})
      : super(key: key);
  final String number;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PinCheckController>(
        initState: (controller) {},
        builder: (controller) {
          return InkWell(
            onTap: callback,
            child: Container(
              height: 9.h,
              width: 9.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey)),
              child: Center(
                child: Text(
                  number,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.black),
                ),
              ),
            ),
          );
        });
  }
}

class PinCheckBox2 extends StatelessWidget {
  PinCheckBox2({Key? key, required this.number}) : super(key: key);
  final String number;
  final ctrl = Get.find<PinCheckController>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ctrl.deleteDigit(),
      child: Container(
          height: 9.h,
          width: 9.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
          child: const Center(
              child: Icon(
            CupertinoIcons.delete_left,
            color: Colors.black,
          ))),
    );
  }
}
