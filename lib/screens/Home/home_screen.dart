import 'package:doctorq/widgets/readonly_textfield.dart';
import 'package:doctorq/widgets/user_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: 0,
          title: Row(
            children: [
              Image.asset(
                ImageAssets.doctorQLogo,
                height: 45.h,
              ),
              Text(
                '  DoctorQ',
                style: getSemiBoldStyle(
                    color: ColorManager.black, fontSize: 18.sp),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16).r,
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                    color: RGBColorManager.lightBlueRGB,
                    borderRadius: BorderRadius.circular(10).w
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.notifications,color: RGBColorManager.blueRGB,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16).r,
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                      color: RGBColorManager.lightBlueRGB,
                      borderRadius: BorderRadius.circular(10).w
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite,color: RGBColorManager.blueRGB,),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16).r,
                    child: ReadOnlyTextField(hint: 'Search', widget: Icon(Icons.search), onPress: () {}),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Specialist Doctor',style: getBoldStyle(fontSize: 16.sp),),
                      Text('see all',style: getSemiBoldStyle(fontSize: 15.sp,color: RGBColorManager.blueRGB),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
