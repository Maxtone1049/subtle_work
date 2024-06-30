import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/general/transact_for_verify.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/saved_cards.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/router/page_router.dart';

class CompanyPaymentSheets extends StatelessWidget {
  const CompanyPaymentSheets({
    super.key,
    required this.serviceType,
  });
  final String serviceType;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 23.w,
          right: 23.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(height: 15),
              Center(
                child: TextView(
                    config: TextViewConfig(
                  text: "Payment Method",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                )),
              ),
              const Gap(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 17.h,
                  horizontal: 20.w,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5.w,
                    color: AppColors.arre,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                    ImageView(
                        imageConfig: ImageConfig(
                      imageURL: AppImage.round,
                      imageType: ImageType.asset,
                      height: 30.h,
                      width: 30.w,
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
                            text: "Pay with Weverefy available balance",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black,
                          )),
                          const Gap(
                            height: 4,
                          ),
                          TextView(
                              config: TextViewConfig(
                            text: "Pay with Weverefy available balance",
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gr,
                          )),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.radio_button_off,
                      size: 14.sp,
                      color: AppColors.gr,
                    )
                  ],
                ),
              ),
              const Gap(
                height: 20,
              ),
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
                        builder: (context) => const SavedServiceCardView())),
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
                        width: 0.50.w,
                        color: AppColors.arre.withOpacity(0.5.w)),
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
                      Icon(
                        Icons.radio_button_off,
                        size: 14.sp,
                        color: AppColors.gr,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(
                height: 40,
              ),
              ButtonWidget(
                  config: ButtonConfig(
                text: "Pay NGN 34,000.00",
                onPressed: () {
                  PageRouter.pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PinVerify(
                                purpose: 'Verify',
                              )));
                },
                height: 42,
                buttonColor: AppColors.primary,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(height: 43),
            ],
          ),
        ),
      ),
    );
  }
}
