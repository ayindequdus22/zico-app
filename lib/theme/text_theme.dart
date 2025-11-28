import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme buildTextTheme(ColorScheme colorScheme) {
    return TextTheme(
      // Headlines → Poppins
      headlineLarge: GoogleFonts.poppins(
        fontSize: 36.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 28.sp,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      ),
      headlineSmall: GoogleFonts.poppins(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      ),

      // Titles → poppins
      titleLarge: GoogleFonts.poppins(
        fontSize: 22.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      ),

      // Body → Open Sans
      bodyLarge: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface.withValues(alpha: 0.8),
      ),

      // Buttons → Nunito Sans
      labelLarge: GoogleFonts.poppins(
        fontSize: 16.sp, // 🔥 bumped for stronger CTA
        fontWeight: FontWeight.w500,
        // color: colorScheme.onPrimary,
      ),

      // Links → Inter
      labelMedium: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        // color: Colors.blue,
        // decoration: TextDecoration.underline,
      ),
    );
  }
}
