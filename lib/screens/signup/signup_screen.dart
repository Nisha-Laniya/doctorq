import '../../provider/provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      ImageAssets.doctorQ,
                      height: 150.h,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(40).w,
                      child: const TitleText(
                        title: 'Sign up for free',
                      ),
                    ),
                  ),
                  const UserTextField(
                    title: 'Email',
                    hintText: 'Email',
                    textInputAction: TextInputAction.next,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const UserTextField(
                    title: 'Password',
                    hintText: 'Password',
                    textInputAction: TextInputAction.done,
                    isPassword: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Consumer<CheckBoxProvider>(
                            builder: (context, value, child) {
                          return Checkbox(
                            value: value.isChecked,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                width: 2.0,
                                color: RGBColorManager.blueRGB,
                              ),
                            ),
                            onChanged: (bool? values) {
                              value.tickCheckBox(values!);
                            },
                          );
                        }),
                        Text(
                          'Remember me',
                          style: getSemiBoldStyle(
                            color: ColorManager.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Buttons(
                      title: 'Sign Up',
                      onPress: () {
                        Get.offAllNamed(
                          '/UserScreen',
                        );
                      },
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20).r,
                      child: const Text(
                        'or continue with',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SocialButton(
                        image: IconAssets.facebook,
                        title: '   Facebook',
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const SocialButton(
                        image: IconAssets.google,
                        title: '   Google',
                      )
                    ],
                  ),
                  const ExistAccount(
                    title: 'Already have an account?',
                    subTitle: '  Sign in',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
