import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/Auth/business-type/business/form_two.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/Manager/shared_preferences.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.logger.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/router/page_router.dart';

class CompleteVerify extends StatefulWidget {
  const CompleteVerify(
      {super.key,
      required this.message,
      required this.type,
      required this.code});
  final String message, type, code;

  @override
  State<CompleteVerify> createState() => _CompleteVerifyState();
}

class _CompleteVerifyState extends State<CompleteVerify> {
  var session = locator<SharedPreferencesService>();
  final logger = getLogger('AuthViewModel');

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
                  text: widget.message,
                  textAlign: TextAlign.center,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const Gap(
                height: 272,
              ),
              widget.type.contains('Personal')
                  ? TextView(
                      config: TextViewConfig(
                        text: "Proceed to Create Personal Account",
                        fontSize: 13,
                        onTap: () {
                          // String? token =
                              // 'hJ73nP9!Qz6@rK0&Lu1eB4\$Wf8xV2Yc';
                          // session.authToken = token.toString();
                          // logger.d(session.authToken);
                          PageRouter.pushNamed(Routes.bioDataForm,
                              args: BioDataFormArguments(otpCode: widget.code));
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const BioDataForm(),
                          //   ),
                          // );
                        },
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary,
                      ),
                    )
                  : TextView(
                      config: TextViewConfig(
                        text: "Proceed to Create Business Account",
                        fontSize: 13,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BusinesType(),
                            ),
                          );
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
