import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zico/screens/onboarding/back_button.dart';

class AllSet extends StatelessWidget {
  const AllSet({super.key});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main content
              20.verticalSpace,
              backButton(),
              40.verticalSpace,
              // Zico character
              Center(
                child: Image.asset("assets/images/Zico.png", height: 300.h),
              ),

              40.verticalSpace,
              Column(
                children: [
                  // Title and subtitle
                  Text(
                    "You're All Set!",
                    style: themeContext.textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  16.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      "Let's help guide you on your health journey.",
                      textAlign: TextAlign.center,
                      style: themeContext.textTheme.titleSmall!.copyWith(
                        color: themeContext.colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
              40.verticalSpace,
              // Let's Go button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},

                  child: Text("Let's Go"),
                ),
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
