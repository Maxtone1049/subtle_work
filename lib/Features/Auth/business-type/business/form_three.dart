import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Dropdown/DropDownTextField.dart';
import 'package:weverefy/Common/Dropdown/DropdownView.dart';
import 'package:weverefy/Common/Dropdown/Model/DropdownConfig.dart';
import 'package:weverefy/Common/EditField/EditFieldView.dart';
import 'package:weverefy/Common/EditField/Model/EditFieldConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/business-type/business/docsverity.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';

@FormView(fields: [
  FormTextField(name: 'firstName'),
  FormTextField(name: 'lastName'),
  FormTextField(name: 'dob'),
  FormTextField(name: 'businessName'),
  FormTextField(name: 'businessAddress'),
  FormTextField(name: 'businessSector'),
  FormTextField(name: 'businessURL'),
  FormTextField(name: 'businessSocial'),
  FormTextField(name: 'employeeSize'),
  FormTextField(name: 'countryofOps'),
])
class BusinessDescription extends StatelessWidget {
  const BusinessDescription({super.key});

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
                          text: "Describe Your Business",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Gap(
                        height: 10,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Let's Know more about your business",
                          color: AppColors.darkgrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                config: TextViewConfig(
                                  text: "First Name",
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
                                height: 40,
                                radius: 5.r,
                                filledColor: AppColors.disable,
                                label: 'Nelson',
                                labelStyle: TextStyle(
                                  fontFamily: AppFonts.aeonik,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkgrey,
                                ),
                                keyboardType: TextInputType.text,
                                readOnly: true,
                              )),
                            ],
                          )),
                          const Gap(
                            width: 6,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                config: TextViewConfig(
                                  text: "Last Name",
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
                                height: 40,
                                label: 'Amanda',
                                labelStyle: TextStyle(
                                  fontFamily: AppFonts.aeonik,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkgrey,
                                ),
                                radius: 5.r,
                                filledColor: AppColors.disable,
                                keyboardType: TextInputType.text,
                                readOnly: true,
                              )),
                            ],
                          )),
                        ],
                      ),
                      const Gap(
                        height: 16,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Date Of Birth",
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
                        height: 40,
                        label: '24 April 1997',
                        labelStyle: TextStyle(
                          fontFamily: AppFonts.aeonik,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkgrey,
                        ),
                        radius: 5.r,
                        filledColor: AppColors.disable,
                        keyboardType: TextInputType.text,
                        readOnly: true,
                      )),
                      const Gap(
                        height: 16,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Business name",
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
                        height: 40,
                        label: 'Chiju Nh',
                        labelStyle: TextStyle(
                          fontFamily: AppFonts.aeonik,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkgrey,
                        ),
                        radius: 5.r,
                        filledColor: AppColors.disable,
                        keyboardType: TextInputType.text,
                        readOnly: true,
                      )),
                      const Gap(
                        height: 16,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Business Address",
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
                          height: 40,
                          label: 'No 124, Ebube Junction, Portharcourt Lagos.',
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkgrey,
                          ),
                          radius: 5.r,
                          filledColor: AppColors.white,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      const Gap(
                        height: 16,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Business Sector",
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
                          height: 40,
                          label: 'Select',
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          dropDownList: [
                            const DropDownValueModel(
                                name: 'Sector 1', value: 'value'),
                            const DropDownValueModel(
                                name: 'Sector 2', value: 'value'),
                            const DropDownValueModel(
                                name: 'Sector 3', value: 'value'),
                            const DropDownValueModel(
                                name: 'Sector 4', value: 'value'),
                          ],
                        ),
                      ),
                      const Gap(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                config: TextViewConfig(
                                  text: "Business website (if any)",
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
                                  height: 40,
                                  radius: 5.r,
                                  label: 'https://',
                                  labelStyle: TextStyle(
                                    fontFamily: AppFonts.aeonik,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  filledColor: AppColors.white,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                            ],
                          )),
                          const Gap(
                            width: 6,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                config: TextViewConfig(
                                  text: "Social Media Handle",
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
                                height: 40,
                                label: 'http://facebook.com',
                                labelStyle: TextStyle(
                                  fontFamily: AppFonts.aeonik,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkgrey,
                                ),
                                radius: 5.r,
                                filledColor: AppColors.white,
                                keyboardType: TextInputType.text,
                              )),
                            ],
                          )),
                        ],
                      ),
                      const Gap(
                        height: 16,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Number of employees",
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
                          height: 40,
                          label: 'Kindly select no of employeees',
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          dropDownList: [
                            const DropDownValueModel(
                                name: '0-5', value: 'value'),
                            const DropDownValueModel(
                                name: '10-20', value: 'value'),
                            const DropDownValueModel(
                                name: '20-50', value: 'value'),
                            const DropDownValueModel(
                                name: '60-100', value: 'value'),
                          ],
                        ),
                      ),
                      const Gap(
                        height: 16,
                      ),
                      TextView(
                        config: TextViewConfig(
                          text: "Country Of Operation",
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
                          label: 'Country',
                          height: 40,
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          dropDownList: [
                            const DropDownValueModel(
                                name: 'Belgium', value: 'value'),
                            const DropDownValueModel(
                                name: 'Indonesia', value: 'value'),
                            const DropDownValueModel(
                                name: 'Tiawan', value: 'value'),
                            const DropDownValueModel(
                                name: 'Prague', value: 'value'),
                          ],
                        ),
                      ),
                      const Gap(height: 14),
                      ButtonWidget(
                        config: ButtonConfig(
                          text: 'Proceed',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DocumentUpload(),
                              ),
                            );
                          },
                          buttonColor: AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 40,
                        ),
                      ),
                      const Gap(
                        height: 14,
                      ),
                    ],
                  ),
                )));
      },
    );
  }
}
