import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zico/screens/onboarding/back_button.dart';

class WellnessFocus extends StatefulWidget {
  const WellnessFocus({super.key});

  @override
  State<WellnessFocus> createState() => _WellnessFocusState();
}

class _WellnessFocusState extends State<WellnessFocus> {
  String? selectedOption;

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
              20.verticalSpace,
              backButton(),
              40.verticalSpace,

              // Title and subtitle
              Column(
                children: [
                  Text(
                    "Your Wellness Focus",
                    style: themeContext.textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  16.verticalSpace,
                  Text(
                    "Clinton, what area of wellness would you like to focus on right now?",
                    textAlign: TextAlign.center,
                    style: themeContext.textTheme.titleSmall!.copyWith(
                      color: themeContext.colorScheme.onSecondaryContainer,
                    ),
                  ),
                  40.verticalSpace,
                ],
              ),
              // Options
              _buildOptionTile("Physical", "physical"),
              16.verticalSpace,
              _buildOptionTile("Emotional", "emotional"),
              16.verticalSpace,
              _buildOptionTile("Both", "both"),

              Spacer(),

              // Next button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: selectedOption != null ? () {} : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themeContext.colorScheme.primary,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                  child: Text("Next"),
                ),
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile(String title, String value) {
    final isSelected = selectedOption == value;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = value;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFE8F0FF) : Colors.grey[100],
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodyLarge),
            Container(
              width: 24.r,
              height: 24.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Color(0xFF4B7FFF) : Colors.grey[400]!,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 12.r,
                        height: 12.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
