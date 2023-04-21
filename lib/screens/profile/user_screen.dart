import 'package:doctorq/provider/profileProvider/date_provider.dart';
import 'package:doctorq/resources/assets_manager.dart';
import 'package:doctorq/resources/color_manager.dart';
import 'package:doctorq/resources/resources.dart';
import 'package:doctorq/widgets/buttons.dart';
import 'package:doctorq/widgets/readonly_textfield.dart';
import 'package:doctorq/widgets/user_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genderList = ["Male", 'Female'];

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: 0,
          title: Row(
            children: [
              Image.asset(
                ImageAssets.doctorQLogo,
                height: 45.h,
              ),
              Text(
                '  Profile',
                style: getSemiBoldStyle(
                    color: ColorManager.black, fontSize: 18.sp),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.grey300.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12).w,
                      border: Border.all(
                        color: ColorManager.grey300,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10).r,
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.cloud_upload_rounded,
                              color: ColorManager.blue,
                            ),
                            backgroundColor: RGBColorManager.lightBlueRGB,
                            radius: 30,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Upload Photo Profile',
                            style: getBoldStyle(color: ColorManager.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0).r,
                    child: Divider(),
                  ),
                  const UserTextField(
                    title: 'Full Name',
                    hintText: 'Full Name',
                    textInputAction: TextInputAction.next,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const UserTextField(
                    title: 'Email',
                    hintText: 'Email',
                    textInputAction: TextInputAction.next,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // ReadOnlyTextField(
                  //   title: 'Gender',
                  //   hint: gender,
                  //   widget: DropdownButton(
                  //     icon: const Icon(
                  //       Icons.keyboard_arrow_down,
                  //       color: ColorManager.grey,
                  //     ),
                  //     iconSize: 32,
                  //     elevation: 4,
                  //     style: const TextStyle(
                  //       color: ColorManager.black,
                  //     ),
                  //     underline: Container(
                  //       height: 0,
                  //     ),
                  //     items: genderList.map<DropdownMenuItem<String>>(
                  //       (String value) {
                  //         return DropdownMenuItem<String>(
                  //           value: value.toString(),
                  //           child: Text(
                  //             value,
                  //           ),
                  //         );
                  //       },
                  //     ).toList(),
                  //     onChanged: (String? value) {
                  //       setState(() {
                  //         gender = value!;
                  //       });
                  //     },
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10).r,
                    child: Text(
                      'Gender',
                      style: getSemiBoldStyle(
                        color: RGBColorManager.greyRGB,
                      ),
                    ),
                  ),
                  DropdownButtonFormField(
                    isExpanded: true,
                    dropdownColor: ColorManager.white,
                    borderRadius: BorderRadius.circular(24.0).r,
                    hint: const Text('Choose Gender'),
                    items: genderList.map((gender) {
                      return DropdownMenuItem(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                    decoration: InputDecoration(
                      fillColor: ColorManager.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManager.grey700,
                        ),
                        borderRadius: BorderRadius.circular(30).w,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: RGBColorManager.blueRGB,
                        ),
                        borderRadius: BorderRadius.circular(30).w,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15)
                          .r,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10).r,
                    child: Text(
                      'Date of birth',
                      style: getSemiBoldStyle(
                        color: RGBColorManager.greyRGB,
                      ),
                    ),
                  ),
                  Consumer<DateProvider>(
                    builder: (context,value,child) {
                      return ReadOnlyTextField(
                        hint: value.selectedDate == null ? 'Date of birth' : DateFormat.yMd().format(value.selectedDate as DateTime),
                        widget: Icon(
                          Icons.calendar_month,
                          color: ColorManager.grey700,
                        ),
                        read: true,
                        onPress: () {
                          value.getDateFromUser(context);
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const UserTextField(
                    title: 'Address',
                    hintText: 'Address',
                    textInputAction: TextInputAction.done,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Buttons(title: 'Confirm', onPress: () {
                    Get.offNamed('/CongratsScreen');
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
