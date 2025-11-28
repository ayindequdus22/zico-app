
  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

IconButton backButton() {
    return IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.chevron_left_outlined),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(CircleBorder()),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  ),
                ),
              );
  }
