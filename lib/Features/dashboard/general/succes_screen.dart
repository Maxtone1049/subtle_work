import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/router/page_router.dart';

class TransactionSuccessView extends StatelessWidget {
  const TransactionSuccessView({
    super.key,
    required this.purpose,
  });
  final String purpose;

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
        backgroundColor: AppColors.greybg,
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(
                height: 250,
              ),
              ImageView(
                  imageConfig: ImageConfig(
                imageURL: AppImage.logo,
                imageType: ImageType.asset,
              )),
              const Gap(
                height: 46,
              ),
              TextView(
                config: TextViewConfig(
                  text: purpose.contains('Release')
                      ? 'Congratulations'
                      : purpose.contains('Recall')
                          ? 'Congratulations'
                          : purpose.contains('Verify')
                              ? 'Congratulations !'
                              : '',
                  textAlign: TextAlign.center,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const Gap(
                height: 13,
              ),
              purpose.contains('Release')
                  ? TextView(
                      config: TextViewConfig(
                        text:
                            'You have successfully released the sum of\nNGN200,000 to Mr charles Nelson',
                        textAlign: TextAlign.center,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    )
                  : purpose.contains('Recall')
                      ? TextView(
                          config: TextViewConfig(
                            text:
                                'You have successfully recalled the sum of\nNGN200,000 from Mr charles Nelson',
                            textAlign: TextAlign.center,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        )
                      : purpose.contains('Verify')
                          ? TextView(
                              config: TextViewConfig(
                                text:
                                    'Your transaction has been successfully completed.\nThank you for choosing our platform!',
                                textAlign: TextAlign.center,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            )
                          : TextView(
                              config: TextViewConfig(
                                text:
                                    'Thank you for bringing this to our attention,\nWe understand your concern and will look into\nit immediately',
                                textAlign: TextAlign.center,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            ),
              const Gap(
                height: 183,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Go back to Dashboard",
                  decorationThickness: 1.5.w,
                  fontSize: 13,
                  onTap: () {
                    PageRouter.pushReplacement(Routes.dashboardView);
                  },
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
