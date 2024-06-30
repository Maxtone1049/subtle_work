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
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/router/page_router.dart';

class ProceedView extends StatelessWidget {
  const ProceedView({super.key, required this.message, required this.type});
  final String message, type;

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
                height: 100,
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
                  text: message,
                  textAlign: TextAlign.center,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const Gap(
                height: 272,
              ),
              type.contains('Personal')
                  ? ButtonWidget(
                      config: ButtonConfig(
                        text: "Proceed to Dashboard",
                        onPressed: () {
                          PageRouter.pushReplacement(Routes.dashboardView);
                        },
                        height: 40,
                        radius: 10.r,
                      ),
                    )
                  : ButtonWidget(
                      config: ButtonConfig(
                        text: "Proceed to Dashboard",
                        onPressed: () {
                          PageRouter.pushReplacement(Routes.dashboardView);
                        },
                        height: 40,
                        radius: 10.r,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
