import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';

class RewardView extends StatelessWidget {
  const RewardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            backgroundColor: AppColors.greybg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(
                  height: 80,
                ),
                TextView(
                    config: TextViewConfig(
                  text: "Rewards",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                )),
                const Gap(
                  height: 50,
                ),
                Center(
                  child: TextView(
                      config: TextViewConfig(
                    text: "Coming Soon",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  )),
                ),
              ],
            )));
  }
}
