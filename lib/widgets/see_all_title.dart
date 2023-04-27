import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class SeeAllTitle extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SeeAllTitle({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10)
          .r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getBoldStyle(
              fontSize: 16.sp,
            ),
          ),
          GestureDetector(
            onTap: onTap,
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
    );
  }
}

