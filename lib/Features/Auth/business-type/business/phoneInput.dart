import 'package:flutter/cupertino.dart';
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
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/business-type/business/phoneInput.form.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/helpers/Model/send_token_model_entity/send_token_model_entity.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';

@FormView(fields: [
  FormTextField(name: 'phone'),
])
class NumberVerify extends StatefulWidget {
  const NumberVerify({super.key});

  @override
  State<NumberVerify> createState() => _NumberVerifyState();
}

class _NumberVerifyState extends State<NumberVerify> with $NumberVerify {
  String selectedCountry = 'assets/images/nig.png';
  var items = [
    'assets/images/ghana.png',
    'assets/images/nig.png',
  ];
  final number = TextEditingController();
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
                  elevation: 0,
                  child: Form(
                    key: model.numberverify,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextView(
                            config: TextViewConfig(
                          text: "Create Account",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        )),
                        const Gap(
                          height: 10,
                        ),
                        TextView(
                            config: TextViewConfig(
                          text:
                              "Please provide your phone number below as it is used to identify your account.",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkgrey,
                        )),
                        const Gap(
                          height: 30,
                        ),
                        TextView(
                            config: TextViewConfig(
                          text: "Enter Your Phone Number",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        )),
                        const Gap(
                          height: 6,
                        ),
                        EditFormField(
                          config: EditFieldConfig(
                            labelStyle: TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
                            label: selectedCountry
                                    .contains('assets/images/nig.png')
                                ? '+234'
                                : '+233',
                            showMaxLengthCounter: true,
                            maxLength: selectedCountry
                                    .contains('assets/images/nig.png')
                                ? 11
                                : 9,
                            prefixIconWidget: SizedBox(
                                width: 40.w,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                  ),
                                  child: DropdownButton(
                                    elevation: 0,
                                    dropdownColor: AppColors.white,
                                    underline: Container(),
                                    value: selectedCountry,
                                    icon: Icon(
                                      CupertinoIcons.chevron_down,
                                      size: 10.sp,
                                      color: AppColors.black,
                                    ),
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedCountry = value!;
                                      });
                                    },
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: ImageView(
                                          imageConfig: ImageConfig(
                                            imageURL: items,
                                            imageType: ImageType.asset,
                                            height: 14.h,
                                            width: 14.w,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                )),
                          ),
                        ),
                        const Gap(
                          height: 29,
                        ),
                        Row(
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
                        const Gap(
                          height: 14,
                        ),
                        ButtonWidget(
                          config: ButtonConfig(
                              text: "Proceed",
                              onPressed: () {
                                if (model.numberverify.currentState!
                                    .validate()) {
                                  model.sendCode(
                                      SendTokenModelEntity(
                                          email: '',
                                          phoneNumber: selectedCountry.contains(
                                                  'assets/images/nig.png')
                                              ? "+234${phoneController.text}"
                                              : "+233${phoneController.text}"),
                                      'Business');
                                }
                              },
                              height: 40.h,
                              buttonColor: AppColors.primary,
                              loaderColor: AppColors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              radius: 10.r),
                        ),
                      ],
                    ),
                  )));
        });
  }
}
