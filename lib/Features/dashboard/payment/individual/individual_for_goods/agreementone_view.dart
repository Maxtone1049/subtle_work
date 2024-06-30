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
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/preview_agreement.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';

class AgreementOneView extends StatefulWidget {
  const AgreementOneView({super.key});

  @override
  State<AgreementOneView> createState() => _AgreementOneViewState();
}

class _AgreementOneViewState extends State<AgreementOneView> {
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
                text: "Pay An Individual For Goods",
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
                      'This Payment Agreement ("Agreement") is entered into between Mr. Nelson Sunday (“Buyer”) and Miss Funke Adaobi (“Seller”) as of [${dateFormat(DateTime.now())}]; For the Purchase of [13 pieces of Smart Samsung TV\’s]',
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
                      text: "Delivery Before Payment",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                text:
                    "The Buyer & Seller acknowledges that items must be delivered before\npayment is made.",
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
                      text: "No Initial Deposits Until Satisfaction",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "The Buyer & Seller acknowledges that no initial deposits will be made until\nthe item meets the satisfaction of the buyer. However, this depends\nentirely on the buyer, who has the option to release either partial or full\npayment to the seller.",
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
                      text: "Right to Return",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "The Buyer & Seller acknowledge that they have the right to return the item\n& refund if it does not meet the description contained in this transaction",
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
                      text: "Eligibility for Refund/Recall of Payment",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "The Buyer and Seller agree that once the seal is broken, the item is eligible\nfor return only if it is damaged, defective, or there is/are missing part(s)",
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
                      text: "Transaction Amount",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "Both parties agree that the total transaction amount is NGN 600,000.00",
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
                      text: "Duration",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700)),
              const Gap(
                height: 12,
              ),
              TextView(
                  config: TextViewConfig(
                      text:
                          "Both parties agree that the duration for this transaction is 4 weeks",
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
                                    const PreviewAgreementView())));
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
