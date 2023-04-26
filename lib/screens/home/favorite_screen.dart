import 'package:doctorq/provider/homeProvider/favorite_provider.dart';
import 'package:provider/provider.dart';

import '../../data/data.dart';
import '../../widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../resources/resources.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: RGBColorManager.darkBlueRGB, //change your color here
        ),
        leadingWidth: 30.w,
        title: Text(
          'Favorite Doctor',
          style: getSemiBoldStyle(
            color: ColorManager.black,
            fontSize: 18.sp,
          ),
        ),
        backgroundColor: ColorManager.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16).r,
            child: Align(
              child: Container(
                decoration: BoxDecoration(
                    color: RGBColorManager.lightBlueRGB,
                    borderRadius: BorderRadius.circular(10).w),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.filter_list_rounded,
                    color: RGBColorManager.darkBlueRGB,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Consumer<FavoriteProvider>(
        builder: (context,value,child) {
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: topDoctor.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10).w,
                child: GestureDetector(
                  onTap: () {
                    customBottomSheet(context, index,value);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(20).w,
                      border: Border.all(
                        color: ColorManager.grey300,
                      ),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            child: Image.asset(
                              topDoctor[index]['Image'],
                              height: 90.h,
                              width: 100.w,
                              fit: BoxFit.cover,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 15).r,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                topDoctor[index]['Name'],
                                style: getBoldStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 10, bottom: 10).r,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      IconAssets.halfStar,
                                      height: 13.h,
                                      color: RGBColorManager.darkBlueRGB,
                                    ),
                                    Text(
                                      topDoctor[index]['Reviews'],
                                      style: TextStyle(
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '${topDoctor[index]['Special']} Specialist',
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16).r,
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
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  customBottomSheet(BuildContext context, index,value) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: const Radius.circular(30).w,
        ),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0).r,
              child: Container(
                height: 3.h,
                width: 80.w,
                decoration: BoxDecoration(
                    color: ColorManager.grey300,
                    borderRadius: BorderRadius.circular(20).w),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20).w,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(20).w,
                  border: Border.all(
                    color: ColorManager.grey300,
                  ),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          topDoctor[index]['Image'],
                          height: 90.h,
                          width: 100.w,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 15).r,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            topDoctor[index]['Name'],
                            style: getBoldStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10, bottom: 10).r,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  IconAssets.halfStar,
                                  height: 13.h,
                                  color: RGBColorManager.darkBlueRGB,
                                ),
                                Text(
                                  topDoctor[index]['Reviews'],
                                  style: getRegularStyle(
                                    fontSize: 12.sp
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '${topDoctor[index]['Special']} Specialist',
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 16).r,
                      child: Container(
                        decoration: BoxDecoration(
                            color: RGBColorManager.lightBlueRGB,
                            borderRadius: BorderRadius.circular(10).w),
                        child: Padding(
                          padding: EdgeInsets.all(8.0).w,
                          child: Icon(
                            Icons.favorite,
                            color: RGBColorManager.darkBlueRGB,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30.0,
              ).r,
              child: Text(
                'Remove from favorite?',
                style: getSemiBoldStyle(fontSize: 15.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40).r,
              child: Row(
                children: [
                  Expanded(
                    child: OutlineButton(
                      title: 'Cancel',
                      onPress: () {
                        Get.back();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Buttons(
                      title: 'Yes, Remove',
                      onPress: () {
                        value.favorite(index);
                        Get.back();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
