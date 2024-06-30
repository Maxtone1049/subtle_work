import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
import 'package:weverefy/Common/Dropdown/DropDownTextField.dart';
import 'package:weverefy/Common/Dropdown/DropdownView.dart';
import 'package:weverefy/Common/Dropdown/Model/DropdownConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/personal/Create_Pin/createpin.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/assets/app_image.dart';

@FormView(fields: [
  FormTextField(name: 'proofOfAddress'),
  FormTextField(name: 'proofOfIdentity'),
  FormTextField(name: 'TIN'),
])
class DocumentUpload extends StatelessWidget {
  const DocumentUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
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
                  text: "Now, Lets Verify Your Business documents\nand KYC",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(
                height: 10,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Kindly Upload required documents",
                  color: AppColors.darkgrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 12,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Memorandum and Articles of Association",
                  color: AppColors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 6,
              ),
              ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.uploadFrame,
                  imageType: ImageType.asset,
                  width: double.infinity,
                ),
              ),
              const Gap(
                height: 16,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Certificate of Incorporation",
                  color: AppColors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 6,
              ),
              ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.uploadFrame,
                  imageType: ImageType.asset,
                  width: double.infinity,
                ),
              ),
              const Gap(
                height: 16,
              ),
              TextView(
                config: TextViewConfig(
                  text: "CAC Status Report",
                  color: AppColors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 6,
              ),
              ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.uploadFrame,
                  imageType: ImageType.asset,
                  width: double.infinity,
                ),
              ),
              const Gap(
                height: 16,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Proof Of Business Address",
                  color: AppColors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 6,
              ),
              DropDownView(
                config: DropdownConfig(
                  // controller: ,
                  label: 'Select',
                  labelStyle: TextStyle(
                    fontFamily: AppFonts.aeonik,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  dropDownList: [
                    const DropDownValueModel(
                        name: 'Utility Bill', value: 'value'),
                    const DropDownValueModel(
                        name: 'Water Bill', value: 'value'),
                    const DropDownValueModel(name: 'Nepa Bill', value: 'value'),
                    const DropDownValueModel(
                        name: 'Account Statement', value: 'value'),
                  ],
                ),
              ),
              const Gap(
                height: 6,
              ),
              ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.uploadFrame,
                  imageType: ImageType.asset,
                  width: double.infinity,
                ),
              ),
              const Gap(
                height: 16,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Proof Of Identity",
                  color: AppColors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 6,
              ),
              DropDownView(
                config: DropdownConfig(
                  // controller: ,
                  label: 'Select',
                  labelStyle: TextStyle(
                    fontFamily: AppFonts.aeonik,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  dropDownList: [
                    const DropDownValueModel(name: 'NIN Slip', value: 'value'),
                    const DropDownValueModel(
                        name: 'International Passport', value: 'value'),
                    const DropDownValueModel(
                        name: 'Voters Card', value: 'value'),
                  ],
                ),
              ),
              const Gap(
                height: 6,
              ),
              ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.uploadFrame,
                  imageType: ImageType.asset,
                  width: double.infinity,
                ),
              ),
              const Gap(
                height: 16,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Upload Director's Photo",
                  color: AppColors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 6,
              ),
              ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.uploadFrame,
                  imageType: ImageType.asset,
                  width: double.infinity,
                ),
              ),
              const Gap(
                height: 16,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Tax Identification Number",
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
                  label: '12365478996',
                  labelStyle: TextStyle(
                    fontFamily: AppFonts.aeonik,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkgrey,
                  ),
                  radius: 5.r,
                  filledColor: AppColors.white,
                  keyboardType: TextInputType.number,
                ),
              ),
              const Gap(
                height: 60,
              ),
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
              const Gap(
                height: 14,
              ),
              ButtonWidget(
                config: ButtonConfig(
                  text: 'Create Account',
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const CreatePin(
                    //       accountType: 'Business',
                    //     ),
                    //   ),
                    // );
                  },
                  buttonColor: AppColors.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 40.h,
                ),
              ),
              const Gap(
                height: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
