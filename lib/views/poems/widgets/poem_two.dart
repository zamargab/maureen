import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PoemTwo extends StatelessWidget {
  const PoemTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My bliss",
            style: Theme.of(context).textTheme.headline2!,
          ),
          SizedBox(height: 2.h),
          Text(
            "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut \nlabore et dolore magna aliqua. \nUt enim ad minim veniam, \n\nquis nostrud exercitation ullamco \nlaboris nisi ut aliquip ex\nea commodo consequat. \nDuis aute irure dolor in reprehenderit \nin voluptate velit esse cillum \ndolore eu fugiat",
            style: Theme.of(context).textTheme.headline1!,
          ),
        ],
      ),
    );
  }
}
