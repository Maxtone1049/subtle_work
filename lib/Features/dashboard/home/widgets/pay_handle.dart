import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';

class PayHandle extends StatelessWidget {
  const PayHandle({
    super.key,
    required this.tap,
    required this.serviceName,
    required this.serviceType,
    required this.taptwo,
  });
  final Function() tap, taptwo;
  final String serviceName, serviceType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: tap,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(
                  5.r,
                ),
              ),
              child: Wrap(
                children: [
                  ImageView(
                      imageConfig: ImageConfig(
                    imageURL: AppImage.shop,
                    imageType: ImageType.svg,
                  )),
                  const Gap(
                    width: 9,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: serviceName,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                ],
              ),
            ),
          ),
        ),
        const Gap(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: taptwo,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(
                  5.r,
                ),
              ),
              child: Wrap(
                children: [
                  ImageView(
                      imageConfig: ImageConfig(
                    imageURL: AppImage.shop,
                    imageType: ImageType.svg,
                  )),
                  const Gap(
                    width: 9,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: serviceType,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
