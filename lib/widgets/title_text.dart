import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: getBoldStyle(
        fontSize: 20.sp,
      ),
    );
  }
}
