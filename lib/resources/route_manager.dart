import 'package:doctorq/screens/bottomnavigationbar/bottom_navigation_screen.dart';
import 'package:doctorq/screens/congrats/congrats_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/screens.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: "/OnBoardingScreen",
    page: () => const OnBoardingScreen(),
  ),
  GetPage(
    name: "/WelcomeScreen",
    page: () => const WelcomeScreen(),
  ),
  GetPage(
    name: "/SignInScreen",
    page: () => const SignInScreen(),
  ),
  GetPage(
    name: "/SignUpScreen",
    page: () => const SignUpScreen(),
  ),
  GetPage(
    name: "/UserScreen",
    page: () =>  const UserScreen(),
  ),
  GetPage(
    name: "/CongratsScreen",
    page: () =>  const CongratsScreen(),
  ),
  GetPage(
    name: "/BottomNavigationScreen",
    page: () =>  const BottomNavigationScreen(),
  ),
];