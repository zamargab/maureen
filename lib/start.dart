import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mau_love/config/theme_data.dart';
import 'package:mau_love/views/splash_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Maureen Olah',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.appThemeData,
        home: SplashScreen(),
      );
    });
  }
}
