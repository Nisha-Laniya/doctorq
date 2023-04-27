import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/resources.dart';
import '../../data/data.dart';
import '../../widgets/widgets.dart';

class TopDoctorScreen extends StatelessWidget {
  const TopDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesign(),
      body: DefaultTabController(
        length: 7,
        child: Column(
          children: [
            const TabBarDesign(),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: topDoctor.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10).w,
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
                                      const EdgeInsets.only(top: 10, bottom: 10)
                                          .r,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        IconAssets.halfStar,
                                        height: 13.h,
                                        color: RGBColorManager.darkBlueRGB,
                                      ),
                                      Text(
                                        topDoctor[index]['Reviews'],
                                        style: TextStyle(fontSize: 12.sp),
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
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: index.isOdd ?  const Icon(
                                  Icons.favorite,
                                  color: RGBColorManager.darkBlueRGB,
                                ) :  const Icon(
                                  Icons.favorite_border,
                                  color: RGBColorManager.darkBlueRGB,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBarDesign() {
    return AppBar(
      iconTheme: const IconThemeData(
        color: RGBColorManager.darkBlueRGB, //change your color here
      ),
      leadingWidth: 30.w,
      title: Text(
        'Top Doctor',
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
    );
  }
}
