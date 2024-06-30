import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';

class ProfileHolderWidget extends StatelessWidget {
  const ProfileHolderWidget({
    super.key,
    required this.touch,
    required this.image,
    required this.text,
  });
  final Function() touch;
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: touch,
      child: Column(
        children: [
          Row(
            children: [
              ImageView(
                  imageConfig: ImageConfig(
                imageURL: image,
                imageType: ImageType.asset,
                height: 20.h,
                width: 20.w,
              )),
              const Gap(
                width: 10,
              ),
              Expanded(
                child: TextView(
                    config: TextViewConfig(
                  text: text,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                )),
              ),
              Icon(
                CupertinoIcons.chevron_right,
                size: 14.sp,
                color: AppColors.black,
              ),
            ],
          ),
          const Gap(
            height: 16,
          ),
          Divider(
            thickness: 0.5.w,
            color: AppColors.arre.withOpacity(0.5.w),
          ),
        ],
      ),
    );
  }
}
