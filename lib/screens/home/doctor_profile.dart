import 'package:date_picker_timeline/date_picker_widget.dart';
import '../../provider/provider.dart';
import '../../widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../resources/resources.dart';
import 'package:get/get.dart';

class DoctorProfile extends StatelessWidget {
  final String name;
  final String image;
  final String review;
  final String special;
  const DoctorProfile(
      {Key? key,
      required this.name,
      required this.image,
      required this.review,
      required this.special})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> share() async {
      await FlutterShare.share(
          title: 'Example share',
          text: 'Doctor Name: $name \nSpecialist : $special \nReview : $review',
          chooserTitle: 'Example Chooser Title');
    }

    return Scaffold(
      appBar: appBarDesign(share),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              doctorCard(),
              Container(
                margin: const EdgeInsets.all(10).w,
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 15).w,
                decoration: BoxDecoration(
                    border: Border.all(color: RGBColorManager.darkBlueRGB),
                    borderRadius: BorderRadius.circular(20).w),
                child: Row(
                  children: const [
                    DoctorInformation(
                        number: '5000+', title: 'Patients', icon: Icons.people),
                    Spacer(),
                    DoctorInformation(
                        number: '15+',
                        title: 'Years experiences',
                        icon: Icons.person),
                    Spacer(),
                    DoctorInformation(
                        number: '3800+',
                        title: 'Reviews',
                        icon: Icons.message_rounded)
                  ],
                ),
              ),
              aboutDoctor(),
              makeAppointment(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10).r,
                child: Buttons(title: 'Book Appointment', onPress: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column makeAppointment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10).r,
          child: Text(
            'Make Appointment',
            style: getBoldStyle(fontSize: 15.sp),
          ),
        ),
        Consumer<PickDateProvider>(
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DatePicker(
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: RGBColorManager.darkBlueRGB,
                selectedTextColor: Colors.white,
                dateTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                ),
                dayTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
                monthTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
                onDateChange: (date) {
                  value.pickDate(date);
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Column aboutDoctor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10).r,
          child: Text(
            'About Doctor',
            style: getBoldStyle(fontSize: 15.sp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10).w,
          child: Text(
            'Dr. Jenny Wilson is the top most Cardiologist specialist in Divine Hospital at London. She achieved several awards for her wonderful contribution in medical field. She is available for private consultation.',
            style: getRegularStyle(fontSize: 13.sp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10).r,
          child: Text(
            'Working Time',
            style: getBoldStyle(fontSize: 15.sp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10).w,
          child: const Text('Mon - Fri, 09.00 AM - 06.00 PM'),
        ),
        SeeAllTitle(title: 'Reviews', onTap: () {
          Get.toNamed('/ReviewScreen');
        }),
      ],
    );
  }

  Padding doctorCard() {
    return Padding(
      padding: const EdgeInsets.all(10).w,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(20).w,
          border: Border.all(
            color: ColorManager.grey300,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  image,
                  height: 90.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15).r,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: getBoldStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10).r,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          IconAssets.halfStar,
                          height: 13.h,
                          color: RGBColorManager.darkBlueRGB,
                        ),
                        Text(
                          review,
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '$special Specialist',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBarDesign(Future<void> Function() share) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: RGBColorManager.darkBlueRGB, //change your color here
      ),
      leadingWidth: 30.w,
      title: Text(
        name,
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
            child: GestureDetector(
              onTap: () {
                // Get.toNamed('/NotificationScreen');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: RGBColorManager.lightBlueRGB,
                    borderRadius: BorderRadius.circular(10).w),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: RGBColorManager.darkBlueRGB,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16).r,
          child: Align(
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/FavoriteScreen');
              },
              child: GestureDetector(
                onTap: share,
                child: Container(
                  decoration: BoxDecoration(
                      color: RGBColorManager.lightBlueRGB,
                      borderRadius: BorderRadius.circular(10).w),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.share,
                      color: RGBColorManager.darkBlueRGB,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
