import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MessageTwo extends StatelessWidget {
  const MessageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            Text(
              "Lorem ipsum dolor",
              style: Theme.of(context).textTheme.headline2!,
            ),
            SizedBox(height: 2.h),
            Text(
              "Lorem ipsum dolor sit amet, sed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,.",
              style: Theme.of(context).textTheme.headline1!,
            ),
            SizedBox(height: 2.h),
            Text(
              "Lorem ipsum dolor sit amet, sed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,. ",
              style: Theme.of(context).textTheme.headline1!,
            ),
            SizedBox(height: 2.h),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididuntsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,",
              style: Theme.of(context).textTheme.headline1!,
            ),
            SizedBox(height: 2.h),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              style: Theme.of(context).textTheme.headline1!,
            ),
            SizedBox(height: 2.h),
            Text(
              "Lorem ipsum dolor",
              style: Theme.of(context).textTheme.headline1!,
            ),
            SizedBox(height: 0.5.h),
            Text(
              "Lorem ipsum dolor",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}
