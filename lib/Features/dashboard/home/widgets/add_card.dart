import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/EditField/EditFieldView.dart';
import 'package:weverefy/Common/EditField/Model/EditFieldConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/home/Views/success_screen.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/core/router/page_router.dart';

class AddCardForm extends StatelessWidget {
  const AddCardForm({
    super.key,
  });

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
                  text: "Pay With Credit Card",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                )),
              ),
              const Gap(
                height: 27,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Kindly Input your correct card details",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 14.w,
                  top: 5.h,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5.w,
                    color: AppColors.arre,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      config: TextViewConfig(
                        text: "Card Holder Name",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.intgrey,
                      ),
                    ),
                    EditFormField(
                      config: EditFieldConfig(
                        height: 30,
                        label: 'Ayotunde Babatunde Samuel',
                        labelStyle: TextStyle(
                          fontFamily: AppFonts.aeonik,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(height: 13),
              Container(
                padding: EdgeInsets.only(
                  left: 14.w,
                  top: 5.h,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5.w,
                    color: AppColors.arre,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      config: TextViewConfig(
                        text: "Card Number",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.intgrey,
                      ),
                    ),
                    EditFormField(
                      config: EditFieldConfig(
                        height: 30,
                        label: '**** **** **** 6744',
                        labelStyle: TextStyle(
                          fontFamily: AppFonts.aeonik,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(height: 13),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 14.w,
                        top: 5.h,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5.w,
                          color: AppColors.arre,
                        ),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextView(
                            config: TextViewConfig(
                              text: "CVV",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.intgrey,
                            ),
                          ),
                          EditFormField(
                            config: EditFieldConfig(
                              height: 30,
                              label: '567',
                              labelStyle: TextStyle(
                                fontFamily: AppFonts.aeonik,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(
                    width: 13,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 14.w,
                        top: 5.h,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5.w,
                          color: AppColors.arre,
                        ),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextView(
                            config: TextViewConfig(
                              text: "Expiration date",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.intgrey,
                            ),
                          ),
                          EditFormField(
                            config: EditFieldConfig(
                              height: 30,
                              label: '07/26',
                              labelStyle: TextStyle(
                                fontFamily: AppFonts.aeonik,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(
                height: 37,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                ),
                child: ButtonWidget(
                    config: ButtonConfig(
                  text: "Proceed",
                  onPressed: () {
                    PageRouter.pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SuccessView()));
                  },
                  height: 42,
                  buttonColor: AppColors.primary,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                )),
              ),
              const Gap(height: 43),
            ],
          ),
        ),
      ),
    );
  }
}
