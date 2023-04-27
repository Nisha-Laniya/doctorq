import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class RatingTabBar extends StatelessWidget {
  const RatingTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ButtonsTabBar(
          backgroundColor: RGBColorManager.darkBlueRGB,
          unselectedBackgroundColor: ColorManager.white,
          unselectedLabelStyle: const TextStyle(
            color: RGBColorManager.darkBlueRGB,
          ),
          labelStyle: const TextStyle(
            color: ColorManager.white,
            fontWeight: FontWeight.bold,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20).r,
          borderColor: RGBColorManager.darkBlueRGB,
          radius: 20,
          borderWidth: 2,
          unselectedBorderColor: RGBColorManager.darkBlueRGB,
          tabs: const [
            Tab(
              text: 'All',
              icon: Icon(Icons.star,size: 22,),
            ),
            Tab(
              text: '5',
              icon: Icon(Icons.star,size: 22,),
            ),
            Tab(
              text: '4',
              icon: Icon(Icons.star,size: 22,),
            ),
            Tab(
              text: '3',
              icon: Icon(Icons.star,size: 22,),
            ),
            Tab(
              text: '2',
              icon: Icon(Icons.star,size: 22,),
            ),
            Tab(
              text: '1',
              icon: Icon(Icons.star,size: 22,),
            ),
          ],
      ),
    );
  }
}
