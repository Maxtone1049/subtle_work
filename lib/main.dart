import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/core/MainCore/AppConfig.dart';
import 'package:weverefy/core/MainCore/Manager/shared_preferences.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/Network/https_overrides.dart';

final navigate = locator<NavigationService>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = AppHttpOverrides();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light));
  await setupLocator();
  await locator<SharedPreferencesService>().initilize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: ScreenUtilInit(
        designSize: const Size(414, 781),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, __) => KeyboardVisibilityProvider(
          child: MaterialApp(
            title: 'Weverefy',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: AppColors.primary,
            ),
            initialRoute: SharedPreferencesService.instance.isLoggedIn
                ? Routes.dashboardView
                : Routes.onboardingView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            localizationsDelegates: AppConfig.localizationsDelegates,
            navigatorKey: StackedService.navigatorKey,
            supportedLocales: AppConfig.locals,
          ),
        ),
      ),
    );
  }
}
