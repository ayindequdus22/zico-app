import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zico/widgets/onboarding/divider.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            spacing: 30.h,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              50.verticalSpace,
              Column(
                spacing: 8.h,
                children: [
                  Text(
                    "Let’s Get You Started",
                    style: themeContext.textTheme.headlineMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "Enter your email to create your account or sign in.",
                      textAlign: TextAlign.center,
                      style: themeContext.textTheme.titleSmall!.copyWith(
                        color: themeContext.colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 8.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                  TextFormField(),
                  Text("We’ll check if you already have an account."),
                  48.verticalSpace,
                  ElevatedButton(
                    onPressed: () => Get.toNamed("/name-boarding"),
                    child: Text("Continue"),
                  ),
                  // 16.verticalSpace,
                ],
              ),
              ContinueDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
