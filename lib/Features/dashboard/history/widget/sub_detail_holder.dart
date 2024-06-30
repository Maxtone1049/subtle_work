import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';

class SubDetailHolder extends StatelessWidget {
  const SubDetailHolder({
    super.key,
    required this.holdone,
    required this.holdtwo,
  });
  final String holdone, holdtwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextView(
              config: TextViewConfig(
            text: holdone,
            fontSize: 10.sp,
            color: AppColors.darkgrey,
            fontWeight: FontWeight.w400,
          )),
          TextView(
              config: TextViewConfig(
            text: holdtwo,
            fontSize: 10.sp,
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          )),
        ],
      ),
    );
  }
}
