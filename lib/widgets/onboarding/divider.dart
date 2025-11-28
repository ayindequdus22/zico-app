import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContinueDivider extends StatelessWidget {
  const ContinueDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    return Column(
      spacing: 20.h,
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                // thickness: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Or ",
                style: themeContext.textTheme.labelSmall!.copyWith(
                  color: themeContext.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                // thickness: 1,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20.w,
          children: [
            Container(
              width: double.infinity,
              height: 54.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/images/apple.png"),
                    height: 25.h,
                  ),
                  10.horizontalSpace,

                  Text(
                    "Continue with Apple",
                    style: themeContext.textTheme.labelLarge!.copyWith(
                      color: themeContext.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 54.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/images/google.png"),
                    height: 25.h,
                  ),
                  10.horizontalSpace,
                  Text(
                    "Continue with Google",
                    style: themeContext.textTheme.labelLarge!.copyWith(
                      color: themeContext.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
