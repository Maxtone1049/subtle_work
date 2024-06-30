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
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';

class AccountSuccess extends StatelessWidget {
  const AccountSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
          child: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(
              height: 309,
            ),
            ImageView(
                imageConfig: ImageConfig(
              imageURL: AppImage.logo,
              imageType: ImageType.asset,
            )),
            const Gap(
              height: 30,
            ),
            TextView(
              config: TextViewConfig(
                text:
                    "Your Weverefy Personal account has been\nsuccessfully created. Congratulations!",
                textAlign: TextAlign.center,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
            const Gap(
              height: 249,
            ),
            ButtonWidget(
                config: ButtonConfig(
              text: "Proceed to Dashboard",
              onPressed: () {},
              height: 40.h,
              buttonColor: AppColors.primary,
              radius: 10.r,
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            )),
            const Gap(
              height: 43,
            ),
          ],
        ),
      )),
    );
  }
}
