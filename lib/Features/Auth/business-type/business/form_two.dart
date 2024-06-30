import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/EditField/EditFieldView.dart';
import 'package:weverefy/Common/EditField/Model/EditFieldConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/business-type/business/form_three.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';
import 'package:weverefy/core/router/page_router.dart';

@FormView(fields: [
  FormTextField(name: 'businessType'),
  FormTextField(name: 'CACNumber'),
  FormTextField(name: 'bvnNumber'),
  FormTextField(name: 'ninNumber'),
  FormTextField(name: 'businessEmail'),
  FormTextField(name: 'password'),
  FormTextField(name: 'confPassword'),
])
class BusinesType extends StatelessWidget {
  const BusinesType({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => locator<AuthViewModel>(),
        disposeViewModel: false,
        builder: (_, model, __) {
          return BodyWidget(
              config: BodyConfig(
                  // showAppBar: true,
                  backgroundColor: AppColors.greybg,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(
                          height: 63,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text:
                                "Get a Weverefy Account In Your Business\nName",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Gap(
                          height: 10,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text:
                                "Please provide your CAC registration number, BVN, NIN, and\nBusiness details",
                            color: AppColors.darkgrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 20,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text: "Type of Business",
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                            config: EditFieldConfig(
                          height: 40.h,
                          radius: 5.r,
                          filledColor: AppColors.white,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          label: 'Kindly Select your type of business',
                          keyboardType: TextInputType.text,
                        )),
                        const Gap(
                          height: 16,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text: "Enter your CAC Registration number",
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                            config: EditFieldConfig(
                          height: 40.h,
                          radius: 5.r,
                          filledColor: AppColors.white,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          label: 'RC or RN',
                          keyboardType: TextInputType.text,
                        )),
                        const Gap(
                          height: 16,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text: "Enter your BVN",
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                            config: EditFieldConfig(
                          height: 40.h,
                          radius: 5.r,
                          filledColor: AppColors.white,
                          showMaxLengthCounter: true,
                          maxLength: 11,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          label: '12345678901',
                          keyboardType: TextInputType.number,
                        )),
                        const Gap(
                          height: 16,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text: "Enter your NIN",
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                            config: EditFieldConfig(
                          height: 40.h,
                          radius: 5.r,
                          filledColor: AppColors.white,
                          showMaxLengthCounter: true,
                          maxLength: 11,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          label: '12345678901',
                          keyboardType: TextInputType.number,
                        )),
                        const Gap(
                          height: 16,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text: "Enter your Business Email Address",
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                            config: EditFieldConfig(
                          height: 40.h,
                          radius: 5.r,
                          filledColor: AppColors.white,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          label: 'mytaabahaba@gmail.com',
                          keyboardType: TextInputType.emailAddress,
                        )),
                        const Gap(
                          height: 16,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text: "Create Password",
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                            config: EditFieldConfig(
                          height: 40.h,
                          radius: 5.r,
                          filledColor: AppColors.white,
                          label: '******',
                          keyboardType: TextInputType.text,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          suffixIconWidget: Icon(
                            Icons.visibility_outlined,
                            size: 11.sp,
                            color: AppColors.black,
                          ),
                        )),
                        const Gap(
                          height: 16,
                        ),
                        TextView(
                          config: TextViewConfig(
                            text: "Confirm Password",
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                            config: EditFieldConfig(
                          height: 40.h,
                          radius: 5.r,
                          filledColor: AppColors.white,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          label: '******',
                          keyboardType: TextInputType.text,
                          suffixIconWidget: Icon(
                            Icons.visibility_outlined,
                            size: 11.sp,
                            color: AppColors.black,
                          ),
                        )),
                        const Gap(height: 50),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 0,
                                child: Icon(
                                  Icons.check_box,
                                  size: 11.sp,
                                  color: AppColors.primary,
                                ),
                              ),
                              const Gap(
                                width: 4,
                              ),
                              Expanded(
                                flex: 1,
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                    text:
                                        "I acknowledge that i have read, understood and agreed to the ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: AppFonts.aeonik,
                                      fontSize: 10.sp,
                                      color: AppColors.darkgrey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Terms & Conditions, ",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontFamily: AppFonts.aeonik,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.primary),
                                      ),
                                      TextSpan(
                                        text: "as well as the ",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: AppFonts.aeonik,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.darkgrey,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Privacy Policy ",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontFamily: AppFonts.aeonik,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.primary),
                                      ),
                                      TextSpan(
                                        text: "Weverefy.",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: AppFonts.aeonik,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.darkgrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(height: 14),
                        ButtonWidget(
                          config: ButtonConfig(
                            text: 'Create Account',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BusinessDescription(),
                                ),
                              );
                            },
                            buttonColor: AppColors.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 40.h,
                          ),
                        ),
                        const Gap(
                          height: 14,
                        ),
                        GestureDetector(
                          onTap: () => PageRouter.pushNamed(Routes.loginView),
                          child: Center(
                            child: Wrap(
                              children: [
                                TextView(
                                    config: TextViewConfig(
                                  text: "Already have an Account? ",
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                                TextView(
                                    config: TextViewConfig(
                                  text: "Login",
                                  color: AppColors.primary,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                              ],
                            ),
                          ),
                        ),
                        const Gap(
                          height: 47,
                        ),
                      ],
                    ),
                  )));
        });
  }
}
