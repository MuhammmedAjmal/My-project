import 'package:flutter/material.dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/page123.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
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
