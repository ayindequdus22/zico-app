import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zico/screens/onboarding/back_button.dart';

class MeetZico extends StatelessWidget {
  const MeetZico({super.key});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(158, 188, 255, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Image.asset(
                          "assets/images/shape-23.png",
                          height: 150.h,
                        ),
                      ),
                    ),
                    Positioned(left: 16.w, top: 50.h, child: backButton()),
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            top: ScreenUtil().screenHeight * 0.48,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    width: ScreenUtil().screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.r)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          20.verticalSpace,
                          Text(
                            "Meet Zico",
                            style: themeContext.textTheme.headlineMedium,
                          ),
                          4.verticalSpace,
                          Text(
                            "Your personal health assistant",
                            textAlign: TextAlign.center,
                            style: themeContext.textTheme.titleSmall!.copyWith(
                              color:
                                  themeContext.colorScheme.onSecondaryContainer,
                            ),
                          ),
                          30.verticalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "What Zico can do for you",
                                style: themeContext.textTheme.bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: themeContext
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                              ),
                              20.verticalSpace,
                              BuildBullet(
                                text: "Builds personal wellness routines",
                              ),
                              BuildBullet(
                                text: "Set your appointments on command",
                              ),
                              BuildBullet(text: "Reminds you of appointments"),
                              BuildBullet(text: "Track your medication intake"),
                              BuildBullet(
                                text: "Keeps your medical records organized",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Button at the bottom
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 30.h,
                  ),
                  child: ElevatedButton(onPressed: () {}, child: Text("Next")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildBullet extends StatelessWidget {
  const BuildBullet({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8.r,
            width: 8.r,
            margin: EdgeInsets.only(top: 6.h),
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
          8.horizontalSpace,
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Theme.of(
                  Get.context as BuildContext,
                ).colorScheme.onSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
