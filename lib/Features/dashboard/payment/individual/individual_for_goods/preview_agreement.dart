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
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/transaction_preview.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/assets/app_image.dart';

class PreviewAgreementView extends StatelessWidget {
  const PreviewAgreementView({super.key});

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
                    text: "Preview Your Agreement",
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
                    text: "Delivery Before Payment",
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
                        "The Buyer & Seller acknowledges that items must be delivered before\npayment is made.",
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
                    text: "No Initial Deposits Until Satisfaction",
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
                        "The Buyer & Seller acknowledges that no initial deposits will be made until\nthe item meets the satisfaction of the buyer. However, this depends\nentirely on the buyer, who has the option to release either partial or full\npayment to the seller.",
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
                    text: "Right to Return",
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
                        "The Buyer & Seller acknowledge that they have the right to return the item\n& refund if it does not meet the description contained in this transaction",
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
                    text: "Eligibility for Refund/Recall of Payment",
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
                        "The Buyer and Seller agree that once the seal is broken, the item is eligible\nfor return only if it is damaged, defective, or there is/are missing part(s).",
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
                    text: "Transaction Amount",
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
                        "Both parties agree that the total transaction amount is NGN 600,000.00",
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
                        "Both parties agree that the duration for this transaction is 4 weeks",
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
                                        const TransactionPreview()));
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
