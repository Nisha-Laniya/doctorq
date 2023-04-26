import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class Buttons extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const Buttons({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20).w,
        ),
        backgroundColor: RGBColorManager.darkBlueRGB,
        foregroundColor: ColorManager.white,
        minimumSize: Size.fromHeight(
          35.h,
        ),
        side: const BorderSide(
          color: RGBColorManager.darkBlueRGB,
        ),
      ),
      child: Text(
        title,
        style: getSemiBoldStyle(
          color: ColorManager.white,
          fontSize: 13.sp
        ),
      ),
    );
  }
}
