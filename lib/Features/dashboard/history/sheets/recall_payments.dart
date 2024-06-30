import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/EditField/EditFieldView.dart';
import 'package:weverefy/Common/EditField/Model/EditFieldConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/general/transaction_pin.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/core/router/page_router.dart';

class RecallPaymentSheets extends StatelessWidget {
  const RecallPaymentSheets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 23.w,
          right: 23.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(height: 15),
              Center(
                child: TextView(
                    config: TextViewConfig(
                  text: "Recall Payment",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                )),
              ),
              const Gap(
                height: 27,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Reason for recall of funds",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 5,
              ),
              EditFormField(
                config: EditFieldConfig(
                  height: 30,
                  label: 'NGN',
                  maxLines: 4,
                  minLines: 4,
                  alignLabelWithHint: true,
                  labelStyle: TextStyle(
                    fontFamily: AppFonts.aeonik,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
              ),
              const Gap(
                height: 37,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                ),
                child: ButtonWidget(
                    config: ButtonConfig(
                  text: "Proceed",
                  onPressed: () {
                    PageRouter.pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransactionPinView(
                                  purpose: 'Recall',
                                )));
                  },
                  height: 42,
                  buttonColor: AppColors.primary,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                )),
              ),
              const Gap(height: 43),
            ],
          ),
        ),
      ),
    );
  }
}
