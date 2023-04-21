import 'package:doctorq/provider/homeProvider/bottom_navigation_provider.dart';
import 'package:doctorq/provider/profileProvider/date_provider.dart';
import 'package:doctorq/screens/bottomnavigationbar/bottom_navigation_screen.dart';
import 'package:doctorq/screens/bottomnavigationbar/second_bottom.dart';


import 'provider/provider.dart';
import 'package:doctorq/resources/route_manager.dart';
import 'package:doctorq/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CheckBoxProvider(),),
        ChangeNotifierProvider(create: (_) => VisibilityProvider(),),
        ChangeNotifierProvider(create: (_) => DateProvider(),),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider(),),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Doctor Q',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
            getPages: routes,
          );
        },
      ),
    );
  }
}
