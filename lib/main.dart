import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/Orders(tapbar).dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/introhome1(03-1).dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/page123.dart';
import 'package:mynewapp/picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      autoRebuild: false,
      // NEW: Set autoRebuild to false for better performance
      // When false, only widgets using context.su or R-widgets will rebuild
      // autoRebuild: false,
      // Use builder only if you need to use library outside ScreenUtilPlusInit context
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter ScreenUtil Plus Example',

          // Use ResponsiveTheme to automatically scale all text styles
          home: child,
        );
      },
      child: loggin(),
    );
  }
}
