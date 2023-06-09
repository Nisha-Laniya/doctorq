import 'package:doctorq/resources/resources.dart';
import 'package:doctorq/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(ImageAssets.doctorQ,height:250.h,),
              Spacer(),
              Text('Congrats!',style: getBoldStyle(color: RGBColorManager.blueRGB,fontSize: 22.sp),),
              SizedBox(height: 20.h,),
              Text('Your account is ready to use'),
              Spacer(),
              Buttons(title: 'Go to homepage', onPress: () {
                Get.offAllNamed('/BottomNavigationScreen');
              })
            ],
          ),
        ),
      ),
    );
  }
}
