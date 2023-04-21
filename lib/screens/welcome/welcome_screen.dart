import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../resources/resources.dart';
import '../../widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 16).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset(
                  ImageAssets.doctorQ,
                  height: 250.h,
                ),
                const Spacer(),
                const TitleText(
                  title: 'Welcome to DoctorQ!',
                ),
                const Spacer(),
                Buttons(
                  title: 'Sign Up',
                  onPress: () {
                    Get.toNamed(
                      '/SignUpScreen',
                    );
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                Buttons(
                  title: 'Sign In',
                  onPress: () {
                    Get.toNamed(
                      '/SignInScreen',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
