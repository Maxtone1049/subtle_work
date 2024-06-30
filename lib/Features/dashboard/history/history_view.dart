import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/EditField/EditFieldView.dart';
import 'package:weverefy/Common/EditField/Model/EditFieldConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/history/views/credit_transaction_details.dart';
import 'package:weverefy/Features/dashboard/history/views/debit_transaction_details.dart';
import 'package:weverefy/Features/dashboard/history/widget/transaction_holder.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            showAppBar: false,
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.greybg,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(
                    height: 50,
                  ),
                  TextView(
                      config: TextViewConfig(
                          text: "Transaction History",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black)),
                  const Gap(
                    height: 10,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "View Your Transactions",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: 150.w,
                          child: EditFormField(
                            config: EditFieldConfig(
                                height: 20.h,
                                filledColor: AppColors.white,
                                prefixIconWidget: Icon(
                                  CupertinoIcons.search,
                                  size: 11.98.sp,
                                  color: AppColors.darkgrey,
                                ),
                                label: "Search",
                                labelStyle: TextStyle(
                                  fontFamily: AppFonts.aeonik,
                                  fontSize: 10.sp,
                                  color: AppColors.darkgrey,
                                )),
                          ),
                        ),
                      ),
                      const Gap(width: 6),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: 90,
                            child: EditFormField(
                              config: EditFieldConfig(
                                  height: 20.h,
                                  filledColor: AppColors.white,
                                  suffixIconWidget: Icon(
                                    CupertinoIcons.chevron_down_circle,
                                    size: 11.sp,
                                    color: AppColors.black,
                                  ),
                                  label: "Filter",
                                  labelStyle: TextStyle(
                                    fontFamily: AppFonts.aeonik,
                                    fontSize: 10.sp,
                                    color: AppColors.darkgrey,
                                  )),
                            ),
                          ))
                    ],
                  ),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                    config: TextViewConfig(
                      text: "Monday",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Gap(
                    height: 8,
                  ),
                  TransactionHolder(
                      title: "Recieved From Mr. Balogun",
                      time: '4:34pm',
                      date: '12 May 2024',
                      amount: '+NGN 38,670',
                      tap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CreditTransactionDetail(),
                            ));
                      }),
                  const Gap(
                    height: 6,
                  ),
                  TransactionHolder(
                      title: "Transferred to Bayo",
                      time: '4:34pm',
                      date: '12 May 2024',
                      amount: '-NGN 38,670',
                      tap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TransactionDetailView(),
                            ));
                      }),
                  const Gap(
                    height: 6,
                  ),
                  TransactionHolder(
                      title: "Recieved From Mr. Balogun",
                      time: '4:34pm',
                      date: '12 May 2024',
                      amount: '+NGN 38,670',
                      tap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CreditTransactionDetail(),
                            ));
                      }),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                    config: TextViewConfig(
                      text: 'Yesterday',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Gap(
                    height: 6,
                  ),
                  TransactionHolder(
                      title: "Transferred to Bayo",
                      time: '4:34pm',
                      date: '12 May 2024',
                      amount: '-NGN 38,670',
                      tap: () {}),
                  const Gap(
                    height: 6,
                  ),
                  TransactionHolder(
                      title: "Recieved From Mr. Balogun",
                      time: '4:34pm',
                      date: '12 May 2024',
                      amount: '+NGN 38,670',
                      tap: () {}),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                    config: TextViewConfig(
                      text: 'Last Week',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Gap(
                    height: 6,
                  ),
                  TransactionHolder(
                      title: "Transferred to Bayo",
                      time: '4:34pm',
                      date: '12 May 2024',
                      amount: '-NGN 38,670',
                      tap: () {}),
                ],
              ),
            )));
  }
}
