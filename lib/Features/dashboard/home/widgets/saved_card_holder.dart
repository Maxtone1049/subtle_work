import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';

class SavedCardHolder extends StatelessWidget {
  const SavedCardHolder({
    super.key,
    required this.cardNo,
    required this.expire,
    required this.image,
    required this.check,
    required this.tap,
  });
  final String cardNo, expire, image, check;
  final Function() tap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 20.w),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        children: [
          ImageView(
              imageConfig: ImageConfig(
            imageURL: image,
            imageType: ImageType.asset,
            width: 30.w,
            height: 30.h,
          )),
          const Gap(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                    config: TextViewConfig(
                  text: cardNo,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                )),
                const Gap(
                  height: 4,
                ),
                TextView(
                    config: TextViewConfig(
                  text: expire,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                )),
              ],
            ),
          ),
          ImageView(
              imageConfig: ImageConfig(
            imageURL: check,
            imageType: ImageType.asset,
          )),
        ],
      ),
    );
  }
}
