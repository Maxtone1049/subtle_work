import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_service_transaction_preview.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/assets/app_image.dart';

class CompanyServicePreviewAgreement extends StatelessWidget {
  const CompanyServicePreviewAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            showAppBar: true,
            automaticallyImplyLeading: true,
            backgroundColor: AppColors.greybg,
            appbarBackgroundColor: AppColors.greybg,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                      config: TextViewConfig(
                    text: "Preview Your Service Agreement",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ImageView(
                      imageConfig: ImageConfig(
                          imageURL: AppImage.logo,
                          imageType: ImageType.asset,
                          height: 20.h,
                          width: 66.24),
                    ),
                  ),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Scope of Services",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text:
                        "The Service Provider agrees to provide the following services of “Rendering marbles to Ctoy company”",
                    textAlign: TextAlign.justify,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 14.sp,
                        color: AppColors.primarybg,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I Agree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Duration",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text:
                        "Both parties agree that the duration for this transaction is 2 months",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 14.sp,
                        color: AppColors.primarybg,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I Agree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Compensation/No Initial Deposits Until Satisfaction",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text:
                        "Both Parties acknowledge that the total compensation for this service(s) is N200,000.00 and that no initial deposits will be made until the item meets the satisfaction of the Client. However, this depends entirely on the Client, who has the option to release either partial or full payment to the Service Provider.",
                    textAlign: TextAlign.justify,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 14.sp,
                        color: AppColors.primarybg,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I Agree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Ownership Right",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text:
                        "Both parties agree that upon full payment, the Client shall own all rights, title, and interest in and to the work product produced by the Service Provider under this Agreement, including but not limited to all intellectual property rights. The Service Provider retains the right to use the work product as part of their portfolio and for marketing purposes, provided that such use does not violate the confidentiality provisions of this Agreement.",
                    textAlign: TextAlign.justify,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 14.sp,
                        color: AppColors.primarybg,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I Agree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Warranties",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text:
                        "The Service Provider warrants that the work product will be original and will not infringe on any third-party rights.",
                    textAlign: TextAlign.justify,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 14.sp,
                        color: AppColors.primarybg,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I Agree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Termination",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text:
                        "Either party may terminate this Agreement by giving three days' written notice to the other party. In the event of termination, the Client agrees to pay the Service Provider for all services rendered up to the date of termination.",
                    textAlign: TextAlign.justify,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 10,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 14.sp,
                        color: AppColors.primarybg,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I Agree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                  const Gap(
                    height: 49,
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
                          radius: 10.r,
                          text: "Confirm and Proceed",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CompanyServiceTransactionView()));
                          },
                          height: 42,
                          buttonColor: AppColors.primary,
                          buttonOutlinedColor: AppColors.primary,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.white)),
                ],
              ),
            )));
  }
}
