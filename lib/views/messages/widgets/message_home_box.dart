import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class MessageHomeBox extends StatelessWidget {
  const MessageHomeBox(
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
        height: 15.h,
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
        child: Container(
          padding: EdgeInsets.all(3.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3.w),
                    height: 15.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFec8272).withOpacity(0.4)),
                        color: const Color(0xFFec8272),
                        borderRadius: BorderRadius.circular(4.w)),
                    child: SvgPicture.asset(
                      'assets/icons/heart.svg',
                      color: Colors.white,
                      height: 10.h,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(2.w),
                height: 7.h,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Icon(
                  CupertinoIcons.chevron_right,
                  color: Theme.of(context).primaryColor,
                  size: 10.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
