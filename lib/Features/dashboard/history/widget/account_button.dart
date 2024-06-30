import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.tap,
    required this.placeHolder,
  });
  final Function() tap;
  final String placeHolder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 17.h,
          horizontal: 17.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            5.r,
          ),
        ),
        alignment: Alignment.center,
        child: TextView(
            config: TextViewConfig(
          text: placeHolder,
          fontSize: 10.sp,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        )),
      ),
    );
  }
}
