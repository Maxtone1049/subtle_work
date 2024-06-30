import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Dropdown/DropDownTextField.dart';
import 'package:weverefy/Common/Dropdown/DropdownView.dart';
import 'package:weverefy/Common/Dropdown/Model/DropdownConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/business-type/business/phoneInput.dart';
import 'package:weverefy/Features/Auth/business-type/non_business/contact_support.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';

class BusinessFormOne extends StatelessWidget {
  const BusinessFormOne({super.key});

  @override
  Widget build(BuildContext context) {
    final hold = TextEditingController();
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => locator<AuthViewModel>(),
        disposeViewModel: false,
        builder: (_, model, __) {
          return BodyWidget(
            config: BodyConfig(
              backgroundColor: AppColors.greybg,
              showAppBar: true,
              automaticallyImplyLeading: true,
              appbarBackgroundColor: AppColors.greybg,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                        config: TextViewConfig(
                      text: "Create a Business Account",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
                    const Gap(height: 10),
                    TextView(
                        config: TextViewConfig(
                      text:
                          "Please indicate whether your business is registered with the Corporate Affairs Commission (CAC) or not.",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkgrey,
                    )),
                    const Gap(height: 30),
                    TextView(
                      config: TextViewConfig(
                        text: "Is your business registered with CAC?",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(height: 6),
                    DropDownView(
                      config: DropdownConfig(
                        controller: hold,
                        label: '--Select--',
                        dropDownList: [
                          const DropDownValueModel(
                              name: 'My business is registered with CAC',
                              value: '1'),
                          const DropDownValueModel(
                              name: 'My business is not yet registered',
                              value: '2'),
                        ],
                        labelStyle: TextStyle(
                          color: AppColors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.aeonik,
                        ),
                      ),
                    ),
                    const Gap(
                      height: 412,
                    ),
                    ButtonWidget(
                      config: ButtonConfig(
                        text: "Proceed",
                        onPressed: () {
                          if (hold.text
                              .contains('My business is registered with CAC')) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NumberVerify()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContactSupportView()));
                          }
                        },
                        height: 42.h,
                        radius: 10.r,
                        buttonColor: AppColors.primary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
