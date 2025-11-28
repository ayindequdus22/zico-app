import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zico/screens/onboarding/back_button.dart';

class NameBoarding extends StatelessWidget {
  const NameBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);

    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: themeContext.colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          spacing: 30.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(children: [50.verticalSpace, backButton()]),
            50.verticalSpace,
            Column(
              spacing: 8.h,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    "Tell Us Your First Name",
                    textAlign: TextAlign.center,
                    style: themeContext.textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    "So we can address you properly in your daily reminders.",
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
                const Text("First Name"),
                TextFormField(initialValue: "Anteqs"),
                3.verticalSpace,
                ElevatedButton(
                  onPressed: () => Get.toNamed("/meet-zico"),
                  child: const Text("Continue"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
