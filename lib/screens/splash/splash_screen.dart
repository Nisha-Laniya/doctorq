import '../../resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _navigateToOnBoardingScreen();
    super.initState();
  }

  _navigateToOnBoardingScreen() async {
    await Future.delayed(const Duration(seconds: 4), () {
      Get.offNamed('/OnBoardingScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                AnimationAssets.splashAnimation,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
