import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Sheets/BottomSheets.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/history/widget/sub_detail_holder.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/sheets/payments_sheets.dart';
import 'package:weverefy/assets/app_colors.dart';

class ServiceTransactionPreview extends StatelessWidget {
  const ServiceTransactionPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            showAppBar: true,
            automaticallyImplyLeading: true,
            appbarBackgroundColor: AppColors.greybg,
            backgroundColor: AppColors.greybg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                    config: TextViewConfig(
                  text: "Transaction Summary",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                )),
                const Gap(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(
                        width: 0.5.w, color: AppColors.arre.withOpacity(0.5.w)),
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
                          text: 'Transaction Summary',
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
                        holdone: 'Compensation',
                        holdtwo: 'NGN 00.00',
                      ),
                      const Gap(
                        height: 24,
                      ),
                      const SubDetailHolder(
                        holdone: 'Fraud Protection Fee',
                        holdtwo: 'NGN 00.00',
                      ),
                      const Gap(
                        height: 24,
                      ),
                      const SubDetailHolder(
                        holdone: 'Processing Fee',
                        holdtwo: 'NGN 00.00',
                      ),
                      const Gap(
                        height: 24,
                      ),
                      const SubDetailHolder(
                        holdone: 'VAT',
                        holdtwo: '7.5%',
                      ),
                      const Gap(
                        height: 24,
                      ),
                      const SubDetailHolder(
                        holdone: 'Total',
                        holdtwo: 'NGN 600.00',
                      ),
                      const Gap(
                        height: 24,
                      ),
                    ],
                  ),
                ),
                const Gap(
                  height: 250,
                ),
                ButtonWidget(
                    config: ButtonConfig(
                        text: "Proceed to Payment",
                        onPressed: () {
                          BottomSheets.showSheet(context,
                              child: const PaymentSheets(
                                serviceType: 'Service',
                              ));
                        },
                        radius: 10.r,
                        height: 42,
                        buttonColor: AppColors.primary,
                        buttonOutlinedColor: AppColors.primary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        textColor: AppColors.white)),
              ],
            )));
  }
}
