import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
import 'package:weverefy/Features/dashboard/general/succes_screen.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/assets/app_image.dart';

class ReportIssue extends StatelessWidget {
  const ReportIssue({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            showAppBar: true,
            backgroundColor: AppColors.greybg,
            elevation: 0,
            appbarBackgroundColor: AppColors.greybg,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                      config: TextViewConfig(
                    text: "Report An Issue",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Kindly fill the form to report an issue",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 30,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Transaction Number",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 8,
                  ),
                  EditFormField(
                      config: EditFieldConfig(
                          filledColor: const Color(0xffF1F0F0),
                          label: '778955441566312236',
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.ayone,
                          ))),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Upload Image",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  ImageView(
                      imageConfig: ImageConfig(
                          imageURL: AppImage.upload,
                          imageType: ImageType.asset,
                          width: double.infinity)),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Describe the issue",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  EditFormField(
                      config: EditFieldConfig(
                          maxLines: 4,
                          minLines: 4,
                          alignLabelWithHint: true,
                          label: 'Please enter your description',
                          labelStyle: TextStyle(
                            fontFamily: AppFonts.aeonik,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.ayone,
                          ))),
                  const Gap(
                    height: 64,
                  ),
                  ButtonWidget(
                      config: ButtonConfig(
                    text: "Submit",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TransactionSuccessView(
                                    purpose: 'Issue',
                                  )));
                    },
                    height: 40,
                    textColor: AppColors.white,
                    buttonColor: AppColors.primary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  )),
                ],
              ),
            )));
  }
}
