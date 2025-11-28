import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zico/theme/color_scheme.dart';
import 'package:zico/theme/text_theme.dart';

class AppTheme {

  static ThemeData lightMode(BuildContext context, ColorScheme colorScheme) {
    print("In the themme ${Theme.of(context).colorScheme.surface}");
    return ThemeData(
      scaffoldBackgroundColor: colorScheme.surface,
      colorScheme: colorScheme,
      textTheme: AppTextTheme.buildTextTheme(MyColorScheme.lightColorScheme),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(color: colorScheme.onPrimaryContainer),

        filled: true,
        errorStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: colorScheme.error,
        ),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10).r,
          borderSide: BorderSide(color: Color.fromRGBO(208, 213, 221, 1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10).r,
          borderSide: BorderSide(color: colorScheme.primary, width: 1.w),
        ),
      ),
      dividerTheme: DividerThemeData(color: colorScheme.onPrimaryContainer),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 60.h)),
          splashFactory: InkSparkle.splashFactory,
          textStyle: WidgetStatePropertyAll(
            Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: Colors.white),
          ),
          backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.w)),
          ),
        ),
      ),
    );
  }
}
