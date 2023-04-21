import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class ExistAccount extends StatelessWidget {
  final String title;
  final String subTitle;
  const ExistAccount({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: getRegularStyle(color: ColorManager.grey),
              ),
              Text(
                subTitle,
                style: getSemiBoldStyle(
                  color: RGBColorManager.darkBlueRGB,
                ),
              ),
            ],
          )),
    );
  }
}
