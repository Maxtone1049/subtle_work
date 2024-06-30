import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:weverefy/Common/AppUtils/Form_Validator.dart';
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
import 'package:weverefy/Features/Auth/Login/login_view.form.dart';
import 'package:weverefy/Features/onboarding/select_account.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
// import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';
// import 'package:weverefy/core/router/page_router.dart';

@FormView(fields: [
  FormTextField(name: 'phone'),
  FormTextField(name: 'password'),
])
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with $LoginView {
  String selectedCountry = 'assets/images/nig.png';
  var items = [
    'assets/images/ghana.png',
    'assets/images/nig.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => locator<AuthViewModel>(),
        disposeViewModel: false,
        onDispose: (model) => disposeForm(),
        onViewModelReady: (model) {},
        builder: (_, model, __) {
          return Form(
            key: model.loginKey,
            child: BodyWidget(
                config: BodyConfig(
                    loading: model.isBusy,
                    showAppBar: true,
                    backgroundColor: AppColors.greybg,
                    appbarBackgroundColor: AppColors.greybg,
                    elevation: 0,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextView(
                              config: TextViewConfig(
                            text: "Login",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          )),
                          const Gap(
                            height: 67,
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
                              controller: phoneController,
                              keyboardType: TextInputType.number,
                              validator: FieldValidator.validateString(),
                              focusNode: phoneFocusNode,
                              label: selectedCountry
                                      .contains('assets/images/nig.png')
                                  ? '+234'
                                  : '+233',
                              showMaxLengthCounter: true,
                              maxLength: selectedCountry
                                      .contains('assets/images/nig.png')
                                  ? 10
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
                            height: 16,
                          ),
                          TextView(
                              config: TextViewConfig(
                            text: "Password",
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          )),
                          const Gap(
                            height: 6,
                          ),
                          EditFormField(
                            config: EditFieldConfig(
                              filledColor: AppColors.white,
                              height: 40.h,
                              radius: 5.r,
                              obscureText: model.passwordVisibility,
                              controller: passwordController,
                              focusNode: passwordFocusNode,
                              validator: FieldValidator.validatePassword(
                                  passwordController),
                              labelStyle: TextStyle(
                                fontFamily: AppFonts.aeonik,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              label: '********',
                              suffixIconWidget: InkWell(
                                onTap: model.togglePasswordVisibility,
                                child: Icon(
                                  !model.passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  size: 16.sp,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                          ),
                          const Gap(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextView(
                                config: TextViewConfig(
                              text: "Forgot Password",
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary,
                            )),
                          ),
                          const Gap(
                            height: 36,
                          ),
                          InkWell(
                            onTap: () => model.toggleAcceptedTermsVisibility(),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Icon(
                                    model.acceptedTerms
                                        ? Icons.check_box
                                        : Icons.check_box_outline_blank,
                                    color: model.acceptedTerms
                                        ? AppColors.primary
                                        : AppColors.black,
                                    size: 11.sp,
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
                          const Gap(
                            height: 14,
                          ),
                          ButtonWidget(
                            config: ButtonConfig(
                                text: "Login",
                                enabled: model.acceptedTerms,
                                loading: model.isLoading ?? false,
                                onPressed: () {
                                  if (model.loginKey.currentState!.validate()) {
                                    model.loginUser(
                                        LoginModelEntity(
                                            password: passwordController.text,
                                            phoneNumber: selectedCountry
                                                    .contains(
                                                        'assets/images/nig.png')
                                                ? "+234${phoneController.text}"
                                                : "+233${phoneController.text}"),
                                        context);
                                  }
                                  // PageRouter.pushReplacement(
                                  //     Routes.dashboardView);
                                },
                                height: 40.h,
                                buttonColor: model.acceptedTerms
                                    ? AppColors.primary
                                    : AppColors.grey,
                                loaderColor: AppColors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                radius: 10.r),
                          ),
                          const Gap(
                            height: 14,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SelectAccount()));
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "Don't have an account? ",
                                    style: TextStyle(
                                      color: AppColors.darkgrey,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Create Account",
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
                            height: 63,
                          ),
                          Center(
                            child: TextView(
                              config: TextViewConfig(
                                  text: "Or login with",
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Gap(
                            height: 19,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ImageView(
                                  imageConfig: ImageConfig(
                                      imageURL: AppImage.glogin,
                                      imageType: ImageType.asset)),
                              ImageView(
                                  imageConfig: ImageConfig(
                                      imageURL: AppImage.facelog,
                                      imageType: ImageType.asset)),
                              ImageView(
                                  imageConfig: ImageConfig(
                                      imageURL: AppImage.applog,
                                      imageType: ImageType.asset)),
                            ],
                          ),
                        ],
                      ),
                    ))),
          );
        });
  }
}
