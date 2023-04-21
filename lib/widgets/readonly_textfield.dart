import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class ReadOnlyTextField extends StatelessWidget {
  final String hint;
  final Widget widget;
  final bool? read;
  final VoidCallback onPress;
  const ReadOnlyTextField(
      {Key? key,
      required this.hint,
      required this.widget,
      required this.onPress, this.read})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.h,
      padding: const EdgeInsets.only(left: 10).r,
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.grey700, width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              readOnly: read == true ? true : false,
              onTap: () {
                onPress();
              },
              autofocus: false,
              style: const TextStyle(
                color: ColorManager.black,
              ),
              decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: ColorManager.grey700,
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.only(left: 5, bottom: 2).r,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                    width: 0,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0))),
            ),
          ),
          widget == null
              ? Container()
              : Padding(
                  padding: EdgeInsets.only(right: 10).r,
                  child: widget,
                ),
        ],
      ),
    );
  }
}
