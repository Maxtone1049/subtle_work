import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';

class TransactionHolder extends StatelessWidget {
  const TransactionHolder({
    super.key,
    required this.tap,
    required this.title,
    required this.time,
    required this.date,
    required this.amount,
  });
  final Function() tap;
  final String title, time, date, amount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5.r),
          border:
              Border.all(width: 0.50.w, color: AppColors.arre.withOpacity(0.2)),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 12.w,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: ImageView(
                  imageConfig: ImageConfig(
                imageURL: AppImage.prof,
                imageType: ImageType.asset,
              )),
            ),
            const Gap(
              width: 6,
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    config: TextViewConfig(
                      text: title,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Gap(
                    height: 6,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "$date | $time",
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkgrey,
                  )),
                ],
              ),
            ),
            amount.contains('-')
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextView(
                        config: TextViewConfig(
                          text: amount,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          color: amount.contains('-')
                              ? AppColors.error
                              : AppColors.primary,
                        ),
                      ),
                      const Gap(
                        height: 11,
                      ),
                      Wrap(
                        children: [
                          ImageView(
                              imageConfig: ImageConfig(
                            imageURL: AppImage.timer,
                            imageType: ImageType.asset,
                          )),
                          const Gap(
                            width: 5,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  TextView(
                                    config: TextViewConfig(
                                      text: '15',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  TextView(
                                    config: TextViewConfig(
                                      text: 'Days',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(
                                width: 6,
                              ),
                              Column(
                                children: [
                                  TextView(
                                    config: TextViewConfig(
                                      text: '21',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  TextView(
                                    config: TextViewConfig(
                                      text: 'Hours',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(
                                width: 6,
                              ),
                              Column(
                                children: [
                                  TextView(
                                    config: TextViewConfig(
                                      text: '36',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  TextView(
                                    config: TextViewConfig(
                                      text: 'Mins',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                : TextView(
                    config: TextViewConfig(
                      text: amount,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: amount.contains('-')
                          ? AppColors.error
                          : AppColors.primary,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
