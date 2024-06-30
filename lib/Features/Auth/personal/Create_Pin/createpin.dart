import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';

class CreatePin extends StatelessWidget {
  const CreatePin({super.key, required this.accountType, required this.token});
  final String accountType, token;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => locator<AuthViewModel>(),
        disposeViewModel: false,
        onViewModelReady: (model) {},
        builder: (_, model, __) {
          return BodyWidget(
              config: BodyConfig(
                  showAppBar: true,
                  backgroundColor: AppColors.greybg,
                  appbarBackgroundColor: AppColors.greybg,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(
                        height: 10,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Create Pin",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                      const Gap(
                        height: 30,
                      ),
                      PinCodeTextField(
                        keyboardType: TextInputType.number,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // controller: otpPin,
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
                        height: 246,
                      ),
                      ButtonWidget(
                          config: ButtonConfig(
                        text: "Confirm",
                        onPressed: () {},
                        radius: 10.r,
                        height: 40.h,
                        buttonColor: AppColors.primary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ))
                    ],
                  )));
        });
  }
}
