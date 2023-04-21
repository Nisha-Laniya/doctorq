import '../provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../resources/resources.dart';

class UserTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextInputAction textInputAction;
  final bool isPassword;
  const UserTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.textInputAction,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10).r,
          child: Text(
            title,
            style: getSemiBoldStyle(
              color: RGBColorManager.greyRGB,
            ),
          ),
        ),
        Consumer<VisibilityProvider>(
          builder: (context, value, child) {
            return TextFormField(
              autofocus: false,
              obscureText: value.isPasswordVisible && isPassword ? true : false,
              textInputAction: textInputAction,
              cursorColor: ColorManager.grey700,
              style: const TextStyle(
                color: ColorManager.black,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: ColorManager.grey700,
                ),
                suffixIcon: isPassword
                    ? IconButton(
                        onPressed: () {
                          value.changeVisibility();
                        },
                        icon: Icon(
                          value.isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      )
                    : null,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15).r,
                filled: true,
                fillColor: ColorManager.grey300.withOpacity(0.2),
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
              ),
            );
          },
        )
      ],
    );
  }
}
