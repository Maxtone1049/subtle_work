import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/Sheets/BottomSheets.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/history/sheets/recall_payments.dart';
import 'package:weverefy/Features/dashboard/history/sheets/release_payment_sheets.dart';
import 'package:weverefy/Features/dashboard/history/views/report_issues.dart';
import 'package:weverefy/Features/dashboard/history/widget/account_button.dart';
import 'package:weverefy/Features/dashboard/history/widget/sub_detail_holder.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';

class TransactionDetailView extends StatelessWidget {
  const TransactionDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            showAppBar: true,
            automaticallyImplyLeading: true,
            backgroundColor: AppColors.greybg,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextView(
                          config: TextViewConfig(
                              text: "Transaction Details",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black)),
                    ),
                    const Gap(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextView(
                          config: TextViewConfig(
                        text: "View Your Transactions Details",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      )),
                    ),
                    const Gap(height: 20),
                    TextView(
                        config: TextViewConfig(
                      text: '-NGN 670,000.00',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.error,
                    )),
                    const Gap(
                      height: 6,
                    ),
                    Container(
                      width: 95.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: TextView(
                        config: TextViewConfig(
                          text: 'Payment Successful',
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    const Gap(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageView(
                            imageConfig: ImageConfig(
                          imageURL: AppImage.check,
                          imageType: ImageType.svg,
                          height: 18.h,
                          width: 18.w,
                        )),
                        ImageView(
                            imageConfig: ImageConfig(
                          imageURL: AppImage.lng,
                          imageType: ImageType.asset,
                        )),
                        ImageView(
                            imageConfig: ImageConfig(
                          imageURL: AppImage.check,
                          imageType: ImageType.svg,
                          height: 18.h,
                          width: 18.w,
                        )),
                        ImageView(
                            imageConfig: ImageConfig(
                          imageURL: AppImage.lng,
                          imageType: ImageType.asset,
                        )),
                        ImageView(
                            imageConfig: ImageConfig(
                          imageURL: AppImage.check,
                          imageType: ImageType.svg,
                          height: 18.h,
                          width: 18.w,
                        )),
                      ],
                    ),
                    const Gap(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                                config: TextViewConfig(
                              text: "Payment Sent",
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary,
                            )),
                            TextView(
                                config: TextViewConfig(
                              text: "08:34 | 20:20:2024",
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextView(
                                config: TextViewConfig(
                              text: "Processing Payment",
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary,
                            )),
                            TextView(
                                config: TextViewConfig(
                              text: "08:34 | 20:20:2024",
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextView(
                                config: TextViewConfig(
                              textAlign: TextAlign.right,
                              text: "Recieved By",
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary,
                            )),
                            TextView(
                                config: TextViewConfig(
                              textAlign: TextAlign.right,
                              text: "Mr Charles Nelson\n08:34 | 20:20:2024",
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            )),
                          ],
                        ),
                      ],
                    ),
                    const Gap(
                      height: 20,
                    ),
                    TextView(
                        config: TextViewConfig(
                      text:
                          'This transaction is pending final approval from the sender "Release Payment" in accordance with Weverefy Fraud Protection Services. However, Weverefy reserves the right to "Release Payment" to the seller after the agreed duration for this transaction, should the buyer fail to authorise Release Payment and no Report has been made by either party.',
                      fontStyle: FontStyle.italic,
                      fontSize: 10.sp,
                      color: AppColors.primarybg,
                      textAlign: TextAlign.justify,
                      fontWeight: FontWeight.w400,
                    )),
                    const Gap(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(
                            width: 0.5.w,
                            color: AppColors.arre.withOpacity(0.5.w)),
                        borderRadius: BorderRadius.circular(
                          5.r,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              top: 10.w,
                            ),
                            child: TextView(
                                config: TextViewConfig(
                              text: 'Transaction Details',
                              fontSize: 12.sp,
                              color: AppColors.black,
                              fontWeight: FontWeight.w700,
                            )),
                          ),
                          const Gap(
                            height: 10,
                          ),
                          Divider(
                            color: AppColors.arre.withOpacity(
                              0.5.w,
                            ),
                            thickness: 1.0.w,
                          ),
                          const Gap(
                            height: 16,
                          ),
                          const SubDetailHolder(
                            holdone: 'Recipient\'s Details',
                            holdtwo: 'Mr. Adebayo Nelson | 023774783833',
                          ),
                          const Gap(
                            height: 24,
                          ),
                          const SubDetailHolder(
                            holdone: 'Payment For',
                            holdtwo: 'Cargo clearing goods and painting',
                          ),
                          const Gap(
                            height: 24,
                          ),
                          const SubDetailHolder(
                            holdone: 'Transaction ID',
                            holdtwo: '993836363899723',
                          ),
                          const Gap(
                            height: 24,
                          ),
                          const SubDetailHolder(
                            holdone: 'Payment Method',
                            holdtwo: 'From Wallet balance',
                          ),
                          const Gap(
                            height: 24,
                          ),
                          const SubDetailHolder(
                            holdone: 'Transaction date',
                            holdtwo: '04-11-2024',
                          ),
                          const Gap(
                            height: 24,
                          ),
                          const SubDetailHolder(
                            holdone: 'Session ID',
                            holdtwo: '993836363899723',
                          ),
                          const Gap(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                    const Gap(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextView(
                          config: TextViewConfig(
                        text: 'Actions',
                        fontSize: 10.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                      )),
                    ),
                    const Gap(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ActionButton(
                              placeHolder: 'Release Payment',
                              tap: () {
                                BottomSheets.showSheet(context,
                                    child: const ReleaseSheets());
                              }),
                        ),
                        const Gap(
                          width: 5,
                        ),
                        Expanded(
                          child: ActionButton(
                              placeHolder: 'Recall Payment',
                              tap: () {
                                BottomSheets.showSheet(context,
                                    child: const RecallPaymentSheets());
                              }),
                        ),
                        const Gap(
                          width: 5,
                        ),
                        Expanded(
                          child: ActionButton(
                              placeHolder: 'Report an Issue',
                              tap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ReportIssue()));
                              }),
                        ),
                      ],
                    ),
                    const Gap(
                      height: 35,
                    ),
                  ],
                ))));
  }
}
