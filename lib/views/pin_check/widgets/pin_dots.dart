import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PinDots extends StatelessWidget {
  const PinDots({Key? key, required this.isACtive}) : super(key: key);
  final bool isACtive;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: isACtive ? 3.h : 2.h,
        width: isACtive ? 3.h : 2.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isACtive ? Theme.of(context).primaryColor : Colors.grey,
        ));
  }
}
