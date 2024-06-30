import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/EditField/EditFieldView.dart';
import 'package:weverefy/Common/EditField/Model/EditFieldConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Common/date_formatter.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_services/service_preview_agreement.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';

class ServiceAgreement extends StatefulWidget {
  const ServiceAgreement({super.key});

  @override
  State<ServiceAgreement> createState() => _ServiceAgreementState();
}

class _ServiceAgreementState extends State<ServiceAgreement> {
  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
        showAppBar: true,
        appbarBackgroundColor: AppColors.greybg,
        backgroundColor: AppColors.greybg,
        automaticallyImplyLeading: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                  config: TextViewConfig(
                text: "Service Payment Agreement",
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              )),
              const Gap(
                height: 20,
              ),
              TextView(
                config: TextViewConfig(
                  text:
                      'This Payment Agreement ("Agreement") is made and entered into [${dateFormat(DateTime.now())}] between Mr. Nelson Sunday, located at ( 56 Banana Island, lagos) (“Client”), and (Service Providers Name), located at (59 Isolo way) (“Service Provider”)',
                  textAlign: TextAlign.justify,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 20,
              ),
              TextView(
                config: TextViewConfig(
                  text:
                      "Both Parties agree to the following terms and conditions",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
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
                      color: AppColors.black)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text:
                    "The Service Provider agrees to provide the following services of “Rendering\nmarbles to Ctoy company”",
                textAlign: TextAlign.justify,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 12,
              ),
              Row(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
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
                    width: 14,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I disagree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                ],
              ),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text: "Comment",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 6,
              ),
              EditFormField(
                  config: EditFieldConfig(
                label: 'Type comment',
                labelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: AppFonts.aeonik,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkgrey,
                ),
              )),
              const Gap(
                height: 20,
              ),
              TextView(
                  config: TextViewConfig(
                      text: "Duration",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      textAlign: TextAlign.justify,
                      text:
                          "Both Parties agree that the duration for this transaction is 2 Months",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400)),
              const Gap(
                height: 12,
              ),
              Row(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
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
                    width: 14,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I disagree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                ],
              ),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text: "Comment",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 6,
              ),
              EditFormField(
                  config: EditFieldConfig(
                label: 'Type comment',
                labelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: AppFonts.aeonik,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkgrey,
                ),
              )),
              const Gap(
                height: 20,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "Compensation/No Initial Deposits Until Satisfaction",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "Both Parties acknowledge that the total compensation for this service(s) is\nN200,000.00 and that no initial deposits will be made until the item meets\nthe satisfaction of the Client. However, this depends entirely on the Client,\nwho has the option to release either partial or full payment to the Service\nProvider.",
                      fontSize: 10.sp,
                      textAlign: TextAlign.justify,
                      fontWeight: FontWeight.w400)),
              const Gap(
                height: 12,
              ),
              Row(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
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
                    width: 14,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I disagree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                ],
              ),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text: "Comment",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 6,
              ),
              EditFormField(
                  config: EditFieldConfig(
                label: 'Type comment',
                labelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: AppFonts.aeonik,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkgrey,
                ),
              )),
              const Gap(
                height: 20,
              ),
              TextView(
                  config: TextViewConfig(
                      text: "Ownership Right",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "Both parties agree that upon full payment, the Client shall own all rights, title, and interest in and to the work product produced by the Service Provider under this Agreement, including but not limited to all intellectual property rights. The Service Provider retains the right to use the work product as part of their portfolio and for marketing purposes, provided that such use does not violate the confidentiality provisions of this Agreement.",
                      textAlign: TextAlign.justify,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400)),
              const Gap(
                height: 12,
              ),
              Row(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
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
                    width: 14,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I disagree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                ],
              ),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text: "Comment",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 6,
              ),
              EditFormField(
                  config: EditFieldConfig(
                label: 'Type comment',
                labelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: AppFonts.aeonik,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkgrey,
                ),
              )),
              const Gap(
                height: 20,
              ),
              TextView(
                  config: TextViewConfig(
                      text: "Warranties",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "The Service Provvider warrants that the work product will be original and will not infringe on any third-party rights.",
                      textAlign: TextAlign.justify,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400)),
              const Gap(
                height: 12,
              ),
              Row(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
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
                    width: 14,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I disagree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                ],
              ),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text: "Comment",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 6,
              ),
              EditFormField(
                  config: EditFieldConfig(
                label: 'Type comment',
                labelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: AppFonts.aeonik,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkgrey,
                ),
              )),
              const Gap(
                height: 20,
              ),
              TextView(
                  config: TextViewConfig(
                      text: "Termination",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "Either party may terminate this Agreement by giving three days' written notice to the other party. In the event of termination, the Client agrees to pay the Service Provider for all services rendered up to the date of termination.",
                      textAlign: TextAlign.justify,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400)),
              const Gap(
                height: 12,
              ),
              Row(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
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
                    width: 14,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 14.sp,
                        color: AppColors.darkgrey,
                      ),
                      const Gap(
                        width: 8,
                      ),
                      TextView(
                          config: TextViewConfig(
                        text: "I disagree",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                ],
              ),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text: "Comment",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 6,
              ),
              EditFormField(
                  config: EditFieldConfig(
                label: 'Type comment',
                labelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: AppFonts.aeonik,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkgrey,
                ),
              )),
              const Gap(
                height: 54,
              ),
              ButtonWidget(
                  config: ButtonConfig(
                      text: "Proceed",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const PreviewServiceAgreement())));
                      },
                      height: 42,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.white,
                      fontSize: 12.sp,
                      buttonColor: AppColors.primary)),
            ],
          ),
        ),
      ),
    );
  }
}
