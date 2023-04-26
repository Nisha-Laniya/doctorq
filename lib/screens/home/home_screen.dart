import 'package:doctorq/data/top_doctor.dart';
import '../../data/data.dart';
import '../../widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/resources.dart';
import 'package:get/get.dart';

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
                  color: ColorManager.black,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16).r,
              child: Align(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/NotificationScreen');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.lightBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.notifications,
                        color: RGBColorManager.darkBlueRGB,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16).r,
              child: Align(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/FavoriteScreen');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.lightBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: RGBColorManager.darkBlueRGB,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16)
                      .r,
                  child: ReadOnlyTextField(
                      hint: 'Search',
                      widget: const Icon(
                        Icons.search,
                      ),
                      onPress: () {}),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10)
                      .r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Specialist Doctor',
                        style: getBoldStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/SpecialistScreen');
                        },
                        child: Text(
                          'see all',
                          style: getSemiBoldStyle(
                            fontSize: 15.sp,
                            color: RGBColorManager.darkBlueRGB,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 185.h,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: specialistDoctor.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8).w,
                          child: Container(
                            decoration: BoxDecoration(
                              color: specialistDoctor[index]['Color'],
                              borderRadius: BorderRadius.circular(20).w,
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(specialistDoctor[index]['Image'], height: 50),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5)
                                        .r,
                                    child: Text(
                                      specialistDoctor[index]['Special'],
                                      style: getBoldStyle(
                                        color: ColorManager.white,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(bottom: 20.0),
                                    child: Text(
                                      'Specialist',
                                      style: getBoldStyle(
                                        color: ColorManager.white,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${specialistDoctor[index]['Number']} Doctors',
                                    style: getRegularStyle(
                                      color: ColorManager.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10)
                      .r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Doctor',
                        style: getBoldStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/TopDoctorScreen');
                        },
                        child: Text(
                          'see all',
                          style: getSemiBoldStyle(
                            fontSize: 15.sp,
                            color: RGBColorManager.darkBlueRGB,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 225.h,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: topDoctor.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12).w,
                              border: Border.all(
                                color: ColorManager.grey300,
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 160.w,
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ).w,
                                      child: Image.asset(
                                        topDoctor[index]['Image'],
                                        height: 150.h,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10).w,
                                  child: Text(
                                    topDoctor[index]['Name'],
                                    style: getBoldStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                Text(
                                  '${topDoctor[index]['Special']} Specialist',
                                  style: getRegularStyle(
                                    fontSize: 14.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}