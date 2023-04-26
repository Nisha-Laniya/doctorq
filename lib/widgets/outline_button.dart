import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class OutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const OutlineButton({
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
        backgroundColor: ColorManager.white,
        foregroundColor: RGBColorManager.darkBlueRGB,
        minimumSize: Size.fromHeight(
          35.h,
        ),
        side: BorderSide(
          color: RGBColorManager.darkBlueRGB,
          width: 1.5
        ),
      ),
      child: Text(
        title,
        style: getSemiBoldStyle(
          color: RGBColorManager.darkBlueRGB,
          fontSize: 13.sp
        ),
      ),
    );
  }
}