import 'package:nice_intro/intro_screens.dart';
import '../../resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IntroScreens introScreens = IntroScreens(
      footerBgColor: ColorManager.blue,
      activeDotColor: ColorManager.white,
      footerRadius: 18.0,
      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Thousands of doctors',
          imageAsset: ImageAssets.onBoarding1,
          description:
              'You can easily contact with a thousands of doctors and contact for your needs.',
          headerBgColor: ColorManager.white,
        ),
        IntroScreen(
          title: 'Chat with doctors',
          headerBgColor: ColorManager.white,
          imageAsset: ImageAssets.onBoarding2,
          description:
              "Book an appointment with doctor. Chat with doctor via appointment letter and get consultation.",
        ),
        IntroScreen(
          title: 'Live talk with doctor',
          headerBgColor: ColorManager.white,
          imageAsset: ImageAssets.onBoarding3,
          description:
              "Easily contact with doctor, start voice and video call for your better treatment and prescription.",
        ),
      ],
      onDone: () {
        Get.offNamed(
          '/WelcomeScreen',
        );
      },
      onSkip: () {
        Get.offNamed(
          '/WelcomeScreen',
        );
      },
    );

    return Scaffold(
      body: introScreens,
    );
  }
}
