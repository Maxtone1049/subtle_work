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
import 'package:weverefy/Features/Auth/Login/login_view.dart';
import 'package:weverefy/Features/onboarding/select_account.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final _controller = PageController();

  int _index = 0;

  final _map = [
    {
      'title': 'PAY WITH CONFIDENCE FROM\nANYWHERE AROUND THE WORLD',
      'bgimage': AppImage.banone,
    },
    {
      'title': 'SECURE YOUR TRANSACTIONS',
      // 'image': AppImage.screen2,
      'bgimage': AppImage.bantwo,
    },
    {
      'title': 'THE MOST RELIABLE FRAUD\nPROTECTION PLATFORM',
      'bgimage': AppImage.banthree,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
        backgroundColor: AppColors.black20,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(
                    height: 12,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                        3,
                        (index) => Container(
                              height: 2.h,
                              margin: EdgeInsets.only(right: 5.w),
                              width: _index == index ? 113.w : 113.w,
                              decoration: BoxDecoration(
                                  color: _index == index
                                      ? AppColors.grey10
                                      : AppColors.darkgrey,
                                  shape: _index == index
                                      ? BoxShape.rectangle
                                      : BoxShape.rectangle,
                                  borderRadius: _index == index
                                      ? BorderRadius.circular(4.r)
                                      : null),
                            )),
                  ),
                  const Gap(height: 80),
                  SizedBox(
                    width: double.infinity,
                    height: 650.h,
                    child: PageView.builder(
                      controller: _controller,
                      padEnds: false,
                      onPageChanged: (value) => setState(() => _index = value),
                      itemCount: _map.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: AnimatedSwitcher(
                                duration: const Duration(microseconds: 10),
                                child: ImageView(
                                  key: ValueKey<String>(
                                      _map[_index]['bgimage'] ?? ''),
                                  imageConfig: ImageConfig(
                                    imageURL: _map[_index]['bgimage'] ?? '',
                                    boxFit: BoxFit.contain,
                                    imageType: ImageType.asset,
                                    width: _index == index ? 167.w : 214.w,
                                    height: _index == index ? 200.h : 250.h,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(height: 41),
                            AnimatedSwitcher(
                              duration: const Duration(microseconds: 10),
                              child: TextView(
                                  key: ValueKey<String>(
                                      _map[_index]['title'] ?? ''),
                                  config: TextViewConfig(
                                      text: _map[_index]['title'] ?? '',
                                      fontSize: 20,
                                      textAlign: TextAlign.center,
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w700)),
                              transitionBuilder: (child, animation) =>
                                  FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            ),
                            const Gap(
                              height: 138,
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedSwitcher(
                duration: const Duration(microseconds: 10),
                child: _index != 2
                    ? ButtonWidget(
                        config: ButtonConfig(
                          text: "Get Started",
                          textColor: AppColors.white,
                          height: 44.h,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          radius: 200.r,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginView(),
                            ),
                          ),
                        ),
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ButtonWidget(
                                  config: ButtonConfig(
                                    text: "Login as personal",
                                    textColor: AppColors.white,
                                    height: 44.h,
                                    fontWeight: FontWeight.w700,
                                    radius: 200.r,
                                    buttonColor: AppColors.primary,
                                    buttonOutlinedColor: AppColors.primary,
                                    fontSize: 14.sp,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginView()));
                                    },
                                  ),
                                ),
                              ),
                              const Gap(width: 5),
                              Expanded(
                                child: ButtonWidget(
                                  config: ButtonConfig(
                                    text: "Login as business",
                                    textColor: AppColors.white,
                                    height: 44.h,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    radius: 200.r,
                                    buttonColor: AppColors.black,
                                    buttonOutlinedColor: AppColors.white,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginView()));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(height: 16),
                          ButtonWidget(
                              config: ButtonConfig(
                            text: "Create Account",
                            textColor: AppColors.white,
                            height: 44.h,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            radius: 200.r,
                            buttonColor: AppColors.primary,
                            buttonOutlinedColor: AppColors.primary,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SelectAccount()));
                            },
                          ))
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
