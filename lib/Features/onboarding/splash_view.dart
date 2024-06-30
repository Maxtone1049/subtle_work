import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Core/router/page_router.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/app.router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timer();
  }

  route() {
    PageRouter.pushNamed(Routes.onboardingView);
  }

  timer() {
    var duration = const Duration(seconds: 6);
    return Timer(duration, route);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(color: AppColors.primarybg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageView(
            imageConfig: ImageConfig(
              imageURL: AppImage.logowhite,
              imageType: ImageType.asset,
            ),
          )
        ],
      ),
    );
  }
}
