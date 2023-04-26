import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class NotificationCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const NotificationCard({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20).w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20).w,
                  bottomLeft: const Radius.circular(20).w),
              child: Padding(
                padding: const EdgeInsets.all(8.0).w,
                child: Image.asset(image, height: 70.h),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0).r,
                    child: Text(
                      title,
                      style: getBoldStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  SizedBox(
                    width: 200.w,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0).r,
                      child: Text(
                        subtitle,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
