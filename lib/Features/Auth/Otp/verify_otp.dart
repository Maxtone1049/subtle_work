import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';

import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/Otp/verify_otp.form.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/helpers/Model/resend_token_model_entity/resend_token_model_entity.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';
import 'package:weverefy/core/router/page_router.dart';

@FormView(fields: [
  FormTextField(name: 'pin'),
])
class VerifyOtp extends StatelessWidget with $VerifyOtp {
  const VerifyOtp({super.key, required this.otpType, required this.number});
  final String otpType, number;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => locator<AuthViewModel>(),
        disposeViewModel: false,
        onViewModelReady: (model) {},
        // onDispose: (model) => disposeForm(),
        builder: (_, model, __) {
          return BodyWidget(
              config: BodyConfig(
                  loading: model.isBusy,
                  backgroundColor: AppColors.greybg,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(
                          height: 40.5,
                        ),
                        Center(
                          child: ImageView(
                              imageConfig: ImageConfig(
                            imageURL: AppImage.logo,
                            imageType: ImageType.asset,
                          )),
                        ),
                        const Gap(
                          height: 123,
                        ),
                        TextView(
                            config: TextViewConfig(
                          text:
                              "A Verification Code has been sent to your\nPhone Number",
                          textAlign: TextAlign.left,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                        )),
                        const Gap(
                          height: 10,
                        ),
                        TextView(
                            config: TextViewConfig(
                          text: "Enter the 4 digit Code sent to $number",
                          textAlign: TextAlign.left,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkgrey,
                        )),
                        const Gap(
                          height: 42,
                        ),
                        PinCodeTextField(
                          keyboardType: TextInputType.number,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          controller: pinController,
                          focusNode: pinFocusNode,
                          length: 4,
                          obscureText: true,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(8.r),
                            borderWidth: 0,
                            fieldWidth: 61.w,
                            fieldHeight: 50.h,
                            activeFillColor: AppColors.white,
                            inactiveColor: AppColors.white,
                            inactiveFillColor: AppColors.white,
                            selectedFillColor: AppColors.white,
                            selectedColor: AppColors.black,
                            selectedBorderWidth: 2.w,
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: true,
                          appContext: context,
                          onChanged: (String value) {},
                        ),
                        const Gap(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () => model.resendCode(ResendTokenModelEntity(
                              email: 'mail@example.com', phoneNumber: number)),
                          child: Align(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "Didn't recieve code? ",
                                  style: TextStyle(
                                    color: AppColors.darkgrey,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Resend",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: AppFonts.aeonik,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.primary),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        const Gap(
                          height: 109,
                        ),
                        ButtonWidget(
                          config: ButtonConfig(
                            text: "Proceed",
                            onPressed: () {
                              print(pinController.text);
                              PageRouter.pushNamed(Routes.completeVerify,
                                  args: CompleteVerifyArguments(
                                      message: 'Verification Completed',
                                      type: otpType,
                                      code: pinController.text));
                            },
                            height: 42.h,
                            buttonColor: AppColors.primary,
                            radius: 10.r,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )));
        });
  }
}
