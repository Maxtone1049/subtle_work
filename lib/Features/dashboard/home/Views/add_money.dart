import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/home/Views/saved_cards.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
        showAppBar: true,
        backgroundColor: AppColors.greybg,
        automaticallyImplyLeading: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(
                config: TextViewConfig(
              text: "Add Money to your Weverefy Account",
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            )),
            const Gap(
              height: 30,
            ),
            TextView(
                config: TextViewConfig(
              text: "Pay with Virtual Account",
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            )),
            const Gap(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                    width: 0.50.w, color: AppColors.arre.withOpacity(0.5.w)),
                color: AppColors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          ImageView(
                              imageConfig: ImageConfig(
                            imageURL: AppImage.wema,
                            imageType: ImageType.asset,
                            width: 24.w,
                            height: 24.h,
                          )),
                          const Gap(
                            width: 5,
                          ),
                          TextView(
                              config: TextViewConfig(
                            text: "Wema Bank",
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          )),
                        ],
                      ),
                      const Gap(height: 10),
                      TextView(
                        config: TextViewConfig(
                          text: "Account Number",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(height: 5),
                      Row(
                        children: [
                          TextView(
                            config: TextViewConfig(
                                text: '2457849925',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black),
                          ),
                          const Gap(width: 6),
                          ImageView(
                              imageConfig: ImageConfig(
                            imageURL: AppImage.copypng,
                            imageType: ImageType.asset,
                            height: 17.h,
                            width: 45.w,
                          )),
                        ],
                      ),
                      const Gap(
                        height: 10,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "Weverefy Limited Bank",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5.h,
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: TextView(
                        config: TextViewConfig(
                      text: 'Virtual Account',
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    )),
                  ),
                ],
              ),
            ),
            const Gap(height: 20),
            TextView(
                config: TextViewConfig(
              text: "Pay with Card",
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            )),
            const Gap(height: 10),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SavedCardView())),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.h,
                  horizontal: 15.w,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                      width: 0.50.w, color: AppColors.arre.withOpacity(0.5.w)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(width: 10),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          ImageView(
                            imageConfig: ImageConfig(
                              imageURL: AppImage.pay,
                              imageType: ImageType.asset,
                              height: 38.h,
                              width: 38.w,
                            ),
                          ),
                          const Gap(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                config: TextViewConfig(
                                  text: 'Pay With Credit Card',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                              const Gap(height: 7),
                              TextView(
                                config: TextViewConfig(
                                  text: 'Master Card, Verve Card, etc',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                        horizontal: 8.w,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: TextView(
                          config: TextViewConfig(
                        text: 'Pay With Card',
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      )),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(height: 150),
            ButtonWidget(
              config: ButtonConfig(
                text: 'Proceed',
                onPressed: () {},
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                buttonColor: AppColors.primary,
                height: 42,
                textColor: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
