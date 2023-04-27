import 'package:get/get.dart';
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
  GetPage(
    name: "/NotificationScreen",
    page: () =>  const NotificationScreen(),
  ),
  GetPage(
    name: "/FavoriteScreen",
    page: () =>  const FavoriteScreen(),
  ),
  GetPage(
    name: "/SpecialistScreen",
    page: () =>  const SpecialistScreen(),
  ),
  GetPage(
    name: "/TopDoctorScreen",
    page: () =>  const TopDoctorScreen(),
  ),
  GetPage(
    name: "/ReviewScreen",
    page: () =>  const ReviewScreen(),
  ),
];