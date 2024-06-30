import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/business-type/business_formone.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/router/page_router.dart';

class SelectAccount extends StatelessWidget {
  const SelectAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
        showAppBar: true,
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.greybg,
        appbarBackgroundColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(
              config: TextViewConfig(
                text: "How do you want to create your account?",
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Gap(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BusinessFormOne()));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 18.h,
                  horizontal: 18.w,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: ImageView(
                        imageConfig: ImageConfig(
                          imageURL: AppImage.business,
                          imageType: ImageType.asset,
                        ),
                      ),
                    ),
                    const Gap(
                      width: 10,
                    ),
                    Expanded(
                      child: TextView(
                        config: TextViewConfig(
                          text: "As A Business Account",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_right,
                      size: 20.sp,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
            const Gap(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                PageRouter.pushNamed(Routes.personalSignUp);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 18.h,
                  horizontal: 18.w,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: ImageView(
                        imageConfig: ImageConfig(
                          imageURL: AppImage.personal,
                          imageType: ImageType.asset,
                        ),
                      ),
                    ),
                    const Gap(
                      width: 10,
                    ),
                    Expanded(
                      child: TextView(
                        config: TextViewConfig(
                          text: "As A Personal Account",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_right,
                      size: 20.sp,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
