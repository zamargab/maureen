import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class HomeBox extends StatelessWidget {
  const HomeBox(
      {Key? key,
      required this.color,
      required this.svg,
      required this.title,
      required this.callback})
      : super(key: key);
  final Color color;
  final String svg;
  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: callback,
          child: Container(
            width: 44.w,
            height: 20.h,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(4.w)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  svg,
                  height: 10.h,
                  color: Colors.white,
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 15.sp, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
