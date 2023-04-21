import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final String title;
  const SocialButton({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.grey300.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12).w,
          border: Border.all(
            color: ColorManager.grey300,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0).w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 20.h,
              ),
              Text(
                title,
                style: getSemiBoldStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
