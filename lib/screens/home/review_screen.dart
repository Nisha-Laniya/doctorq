import 'package:doctorq/widgets/rating_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/resources.dart';
import '../../data/data.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            const RatingTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  allRating(),
                  fiveRating(),
                  fourRating(),
                  threeRating(),
                  twoRating(),
                  oneRating(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListView oneRating() {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10).w,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).w,
                border: Border.all(color: ColorManager.grey300)),
            child: Padding(
              padding: const EdgeInsets.all(10).w,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      reviewOfPatient[index]['Image'],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviewOfPatient[index]['Name'],
                        style: getBoldStyle(fontSize: 15.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                        child: Text(
                          reviewOfPatient[index]['Date'],
                          style: getLightStyle(fontSize: 10.sp),
                        ),
                      ),
                      Text(
                        reviewOfPatient[index]['feedback'],
                        style: getRegularStyle(),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.darkBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: ColorManager.white,
                            size: 22,
                          ),
                          Text(
                            ' 1 ',
                            style: TextStyle(color: ColorManager.white),
                          )
                        ],
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
  }

  ListView twoRating() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10).w,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).w,
                border: Border.all(color: ColorManager.grey300)),
            child: Padding(
              padding: const EdgeInsets.all(10).w,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      reviewOfPatient[index]['Image'],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviewOfPatient[index]['Name'],
                        style: getBoldStyle(fontSize: 15.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                        child: Text(
                          reviewOfPatient[index]['Date'],
                          style: getLightStyle(fontSize: 10.sp),
                        ),
                      ),
                      Text(
                        reviewOfPatient[index]['feedback'],
                        style: getRegularStyle(),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.darkBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: ColorManager.white,
                            size: 22,
                          ),
                          Text(
                            ' 2 ',
                            style: TextStyle(color: ColorManager.white),
                          )
                        ],
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
  }

  ListView threeRating() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10).w,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).w,
                border: Border.all(color: ColorManager.grey300)),
            child: Padding(
              padding: const EdgeInsets.all(10).w,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      reviewOfPatient[index]['Image'],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviewOfPatient[index]['Name'],
                        style: getBoldStyle(fontSize: 15.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                        child: Text(
                          reviewOfPatient[index]['Date'],
                          style: getLightStyle(fontSize: 10.sp),
                        ),
                      ),
                      Text(
                        reviewOfPatient[index]['feedback'],
                        style: getRegularStyle(),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.darkBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: ColorManager.white,
                            size: 22,
                          ),
                          Text(
                            ' 3 ',
                            style: TextStyle(
                              color: ColorManager.white,
                            ),
                          )
                        ],
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
  }

  ListView fourRating() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10).w,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).w,
                border: Border.all(color: ColorManager.grey300)),
            child: Padding(
              padding: const EdgeInsets.all(10).w,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      reviewOfPatient[index]['Image'],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviewOfPatient[index]['Name'],
                        style: getBoldStyle(fontSize: 15.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                        child: Text(
                          reviewOfPatient[index]['Date'],
                          style: getLightStyle(fontSize: 10.sp),
                        ),
                      ),
                      Text(
                        reviewOfPatient[index]['feedback'],
                        style: getRegularStyle(),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.darkBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: ColorManager.white,
                            size: 22,
                          ),
                          Text(
                            ' 4 ',
                            style: TextStyle(color: ColorManager.white),
                          )
                        ],
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
  }

  ListView fiveRating() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10).w,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).w,
                border: Border.all(color: ColorManager.grey300)),
            child: Padding(
              padding: const EdgeInsets.all(10).w,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      reviewOfPatient[index]['Image'],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviewOfPatient[index]['Name'],
                        style: getBoldStyle(fontSize: 15.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                        child: Text(
                          reviewOfPatient[index]['Date'],
                          style: getLightStyle(fontSize: 10.sp),
                        ),
                      ),
                      Text(
                        reviewOfPatient[index]['feedback'],
                        style: getRegularStyle(),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.darkBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: ColorManager.white,
                            size: 22,
                          ),
                          Text(
                            ' 5 ',
                            style: TextStyle(color: ColorManager.white),
                          )
                        ],
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
  }

  ListView allRating() {
    return ListView.builder(
      itemCount: reviewOfPatient.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10).w,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).w,
                border: Border.all(color: ColorManager.grey300)),
            child: Padding(
              padding: const EdgeInsets.all(10).w,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      reviewOfPatient[index]['Image'],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviewOfPatient[index]['Name'],
                        style: getBoldStyle(fontSize: 15.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                        child: Text(
                          reviewOfPatient[index]['Date'],
                          style: getLightStyle(fontSize: 10.sp),
                        ),
                      ),
                      Text(
                        reviewOfPatient[index]['feedback'],
                        style: getRegularStyle(),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: RGBColorManager.darkBlueRGB,
                        borderRadius: BorderRadius.circular(10).w),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: ColorManager.white,
                            size: 22,
                          ),
                          index == 5
                              ? const Text(
                                  ' 4 ',
                                  style: TextStyle(
                                    color: ColorManager.white,
                                  ),
                                )
                              : index == 3
                                  ? const Text(
                                      ' 2 ',
                                      style: TextStyle(
                                        color: ColorManager.white,
                                      ),
                                    )
                                  : index.isOdd
                                      ? const Text(
                                          ' 5 ',
                                          style: TextStyle(
                                            color: ColorManager.white,
                                          ),
                                        )
                                      : const Text(
                                          ' 3 ',
                                          style: TextStyle(
                                            color: ColorManager.white,
                                          ),
                                        ),
                        ],
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
  }

  appbarDesign() {
    return AppBar(
      iconTheme: const IconThemeData(
        color: RGBColorManager.darkBlueRGB, //change your color here
      ),
      leadingWidth: 30.w,
      title: Text(
        'Reviews',
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
