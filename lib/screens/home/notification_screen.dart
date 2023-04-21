import 'package:doctorq/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/resources.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: RGBColorManager.darkBlueRGB, //change your color here
        ),
        title: Text(
          'Notification',
          style: getSemiBoldStyle(color: ColorManager.black, fontSize: 16.sp),
        ),
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Today, April 24 2023'),
                NotificationCard(
                  image: ImageAssets.alarm,
                  title: 'Appointment Alarm',
                  subtitle:
                      'Your appointment will be start after 15 minutes, Stay with app and take care.',
                ),
                NotificationCard(
                  image: ImageAssets.confirm,
                  title: 'Appointment Confirmed',
                  subtitle:
                  'Appointment confirmed Dr. Jerome Bell call will be held at 11:00 AM | 26 Mar 22.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
