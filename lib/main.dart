import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zico/screens/onboarding/get_started.dart';
import 'package:zico/screens/onboarding/name_boarding.dart';
import 'package:zico/screens/onboarding/verify_email.dart';
import 'package:zico/screens/onboarding/meet_zico.dart';
import 'package:zico/screens/onboarding/wellness_focus.dart';
import 'package:zico/theme/app_theme.dart';
import 'package:zico/theme/color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: ThemeMode.light,
          theme: AppTheme.lightMode(context, MyColorScheme.lightColorScheme),
          // theme: ,
          // theme: AppTheme.lightMode(context),
          // darkTheme: AppTheme.darkMode(context),
          onGenerateRoute: (RouteSettings e) {
            switch (e.name) {
              case "/":
                return getPage(widget: WellnessFocus());
              default:
                return getPage(widget: VerifyEmail());
            }
          },
        );
      },
    );
  }

  GetPageRoute<dynamic> getPage({required Widget widget}) {
    return GetPageRoute(
      page: () => widget,
      transition: Transition.cupertino,
      showCupertinoParallax: true,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
