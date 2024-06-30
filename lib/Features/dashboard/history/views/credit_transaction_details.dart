import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/history/widget/sub_detail_holder.dart';
import 'package:weverefy/assets/app_colors.dart';

class CreditTransactionDetail extends StatelessWidget {
  const CreditTransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            showAppBar: true,
            automaticallyImplyLeading: true,
            backgroundColor: AppColors.greybg,
            appbarBackgroundColor: AppColors.greybg,
            elevation: 0,
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
                    text: '+NGN 60,000.00',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  Container(
                    width: 83.w,
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
                        text: 'Successful',
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ),
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
                          holdone: 'Transaction Type',
                          holdtwo: 'Bank Deposit',
                        ),
                        const Gap(
                          height: 24,
                        ),
                        const SubDetailHolder(
                          holdone: 'Sender Details',
                          holdtwo: 'Palmpay | 023774783833',
                        ),
                        const Gap(
                          height: 24,
                        ),
                        const SubDetailHolder(
                          holdone: 'Credited to',
                          holdtwo: 'Wale Yinka | weverefy account',
                        ),
                        const Gap(
                          height: 24,
                        ),
                        const SubDetailHolder(
                          holdone: 'Transaction date',
                          holdtwo: '05:34PM | 04-11-2024',
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
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextView(
                        config: TextViewConfig(
                      text:
                          "Please review this transaction and feel free to contact us if you need any\nfurther clarification or assistance.",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                      fontStyle: FontStyle.italic,
                    )),
                  ),
                ],
              ),
            )));
  }
}
