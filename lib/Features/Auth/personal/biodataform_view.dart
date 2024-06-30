import 'dart:convert';

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
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/personal/biodataform_view.form.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/Network/UrlPath.dart';
import 'package:weverefy/core/helpers/Model/create_personal_account_model_entity/create_personal_account_model_entity.dart';
import 'package:weverefy/core/helpers/Model/get_bvn_detail_response_model/get_bvn_detail_response_model.dart';
import 'package:weverefy/core/helpers/Model/get_profile_response_model/get_profile_response_model.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';
import 'package:http/http.dart' as http;

@FormView(fields: [
  FormTextField(name: 'bvn'),
  FormTextField(name: 'nin'),
  FormTextField(name: 'firstName'),
  FormTextField(name: 'lastName'),
  FormTextField(name: 'gender'),
  FormTextField(name: 'dob'),
  FormTextField(name: 'homeAddress'),
  FormTextField(name: 'emailAddress'),
  FormTextField(name: 'password'),
  FormTextField(name: 'confPassword'),
])
class BioDataForm extends StatefulWidget {
  const BioDataForm({super.key, required this.otpCode});
  final String otpCode;

  @override
  State<BioDataForm> createState() => _BioDataFormState();
}

class _BioDataFormState extends State<BioDataForm> with $BioDataForm {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _setInitialValues(AuthViewModel viewModel) {
    firstNameController.text = "Tony";
    // firstNameController.text = viewModel.fName.toString();
    lastNameController.text = "Maxwell";
    // lastNameController.text = viewModel.lName.toString();
    dobController.text = "1997-04-08";
    // dobController.text = viewModel.dob.toString();
    genderController.text = "Male";
    // genderController.text = viewModel.gender.toString();
  }

  Future<GetBvnDetailResponseModel> getDetails(String token) async {
    final url = Uri.parse(
        "https://weverefy-identity.onrender.com/${UrlConfig.bvnVerify}/$token");
    final headers = {
      'Authorization': 'hJ73nP9!Qz6@rK0&Lu1eB4\$Wf8xV2Yc',
    };

    try {
      final res = await http.post(url, headers: headers);
      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        print(data);
        return GetBvnDetailResponseModel.fromJson(data);
      } else {
        throw Exception('Failed to load profile data');
      }
    } catch (e) {
      print(e); // or use your logger
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => locator<AuthViewModel>(),
        disposeViewModel: false,
        onDispose: (model) => disposeForm(),
        onViewModelReady: (viewModel) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _setInitialValues(viewModel);
          });
        },
        builder: (_, model, __) {
          return BodyWidget(
              config: BodyConfig(
                  // showAppBar: true,
                  loading: model.isBusy,
                  backgroundColor: AppColors.greybg,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Form(
                      key: model.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(
                            height: 63,
                          ),
                          TextView(
                            config: TextViewConfig(
                              text: "Hi, Welcome to Weverefy",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Gap(
                            height: 10,
                          ),
                          TextView(
                            config: TextViewConfig(
                              text: "Please provide your vital informations",
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
                              text: "Enter Your BVN",
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
                            filledColor: AppColors.white,
                            showMaxLengthCounter: true,
                            controller: bvnController,
                            focusNode: bvnFocusNode,
                            maxLength: 10,
                            validator: FieldValidator.validateString(),
                            labelStyle: TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
                            label: '12345678901',
                            onChange: (val) {
                              if (val.length == 10) {
                                // getDetails(val);
                                model.verifyBvn(val);
                              }
                            },
                            keyboardType: TextInputType.number,
                          )),
                          const Gap(
                            height: 16,
                          ),
                          TextView(
                            config: TextViewConfig(
                              text: "Enter Your NIN",
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
                            filledColor: AppColors.white,
                            controller: ninController,
                            focusNode: ninFocusNode,
                            validator: FieldValidator.validateString(),
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
                                    controller: firstNameController,
                                    focusNode: firstNameFocusNode,
                                    validator: FieldValidator.validateString(),
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
                                    controller: lastNameController,
                                    focusNode: lastNameFocusNode,
                                    validator: FieldValidator.validateString(),
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
                              text: "Gender",
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
                            controller: genderController,
                            validator: FieldValidator.validateString(),
                            focusNode: genderFocusNode,
                            label: 'Male',
                            labelStyle: TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
                            keyboardType: TextInputType.text,
                            readOnly: true,
                          )),
                          const Gap(
                            height: 16,
                          ),
                          TextView(
                            config: TextViewConfig(
                              text: "Date of Birth",
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
                            controller: dobController,
                            focusNode: dobFocusNode,
                            validator: FieldValidator.validateString(),
                            label: '22-05-1992',
                            keyboardType: TextInputType.text,
                            labelStyle: TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
                            readOnly: true,
                          )),
                          const Gap(
                            height: 16,
                          ),
                          TextView(
                            config: TextViewConfig(
                              text: "Enter Your Home Address",
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
                            filledColor: AppColors.white,
                            label: '10, Ikoyi Lagos',
                            controller: homeAddressController,
                            focusNode: homeAddressFocusNode,
                            validator: FieldValidator.validateString(),
                            keyboardType: TextInputType.text,
                            labelStyle: TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
                          )),
                          const Gap(
                            height: 16,
                          ),
                          TextView(
                            config: TextViewConfig(
                              text: "Email Address",
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
                            filledColor: AppColors.white,
                            label: 'Enter email',
                            controller: emailAddressController,
                            focusNode: emailAddressFocusNode,
                            validator: FieldValidator.validateEmail(),
                            keyboardType: TextInputType.text,
                            labelStyle: TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
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
                            height: 40,
                            radius: 5.r,
                            filledColor: AppColors.white,
                            label: '******',
                            controller: passwordController,
                            focusNode: passwordFocusNode,
                            validator: FieldValidator.validatePlainPass(),
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
                            height: 40,
                            radius: 5.r,
                            controller: confPasswordController,
                            focusNode: confPasswordFocusNode,
                            validator: FieldValidator.validatePassword(
                                passwordController),
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
                          ButtonWidget(
                            config: ButtonConfig(
                              text: 'Create Account',
                              loading: model.isLoading ?? false,
                              onPressed: () {
                                if (model.formKey.currentState!.validate()) {
                                  model.createPersonalAccount(
                                      CreatePersonalAccountModelEntity(
                                          address: homeAddressController.text,
                                          bvn: bvnController.text,
                                          confirmpasswrd:
                                              confPasswordController.text,
                                          email: emailAddressController.text,
                                          firstname: firstNameController.text,
                                          lastname: lastNameController.text,
                                          passwrd: passwordController.text,
                                          phoneNumber: '+2349060718411'),
                                      widget.otpCode);
                                }
                              },
                              buttonColor: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 40,
                            ),
                          ),
                          const Gap(
                            height: 47,
                          ),
                        ],
                      ),
                    ),
                  )));
        });
  }
}
