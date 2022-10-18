import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class PoemHomeBox extends StatelessWidget {
  const PoemHomeBox(
      {Key? key,
      required this.title,
      required this.desc,
      required this.callback})
      : super(key: key);
  final String title, desc;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        margin: EdgeInsets.only(bottom: 2.h),
        padding: EdgeInsets.all(4.w),
        height: 20.h,
        width: 44.w,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFec8272),
              blurRadius: 5.0,
            ),
          ],
          color: const Color(0xFFec8272),
          borderRadius: BorderRadius.circular(6.w),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                'assets/icons/heart.svg',
                color: Colors.white,
                height: 5.h,
              ),
            ),
            SizedBox(height: 3.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 0.5.h),
                SizedBox(
                  width: 48.w,
                  child: Text(
                    desc,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
