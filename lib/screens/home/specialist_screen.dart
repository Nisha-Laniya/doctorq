import '../../data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/resources.dart';

class SpecialistScreen extends StatelessWidget {
  const SpecialistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesign(),
      body: Padding(
        padding: const EdgeInsets.all(12).w,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
            ),
            itemCount: specialistDoctor.length,
            itemBuilder: (context,index) {
                return  Container(
                  decoration: BoxDecoration(
                    color: specialistDoctor[index]['Color'],
                    borderRadius: BorderRadius.circular(20).w
                  ),
                  child:  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(specialistDoctor[index]['Image'], height: 50),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 5)
                              .r,
                          child: Text(
                            specialistDoctor[index]['Special'],
                            style: getBoldStyle(
                              color: ColorManager.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(bottom: 10.0).r,
                          child: Text(
                            'Specialist',
                            style: getBoldStyle(
                              color: ColorManager.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Text(
                          '${specialistDoctor[index]['Number']} Doctors',
                          style: getRegularStyle(
                            color: ColorManager.white,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
            },
        ),
      )
    );
  }

  appBarDesign() {
    return AppBar(
      iconTheme: const IconThemeData(
        color: RGBColorManager.darkBlueRGB, //change your color here
      ),
      leadingWidth: 30.w,
      title: Text(
        'Specialist Doctor',
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
            child: Container(
              decoration: BoxDecoration(
                  color: RGBColorManager.lightBlueRGB,
                  borderRadius: BorderRadius.circular(10).w),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.filter_list_rounded,
                  color: RGBColorManager.darkBlueRGB,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
